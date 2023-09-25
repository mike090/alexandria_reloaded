# frozen_string_literal: true

class PaymentRetrieveJob < ApplicationJob
  queue_as :default

  STRIPE_STATUS_MAP = { 'succeeded' => 'confirmed', 'pending' => 'sent', 'failed' => 'rejected' }.freeze

  def perform(payment_id)
    @payment = Payment.find(payment_id)
    return unless @payment.sent?

    update_payment
  rescue Stripe::CardError => e
    reject_payment(e.json_body[:error])
  rescue Stripe::APIConnectionError
    retry_job wait: 5.minutes, queue: :default
  rescue StandardError => e
    Rails.logger.error "#{self.class}: payment (id: #{@payment_id}) charge exception! Error: #{e.class} - #{e.message}"
  end

  private

  def update_payment
    new_status = STRIPE_STATUS_MAP[charge.status]
    send "#{new_status}!" if @payment.status != new_status
  end

  def rejected!
    @payment.error = {
      code: charge.failure_code,
      message: charge.failure_message
    }
    @payment.charge_id = charge.id
    @payment.rejected!
  end

  def confirmed!
    @payment.confirmed!
  end

  def charge
    @charge ||= Stripe::Charge.retrieve(@payment.charge_id)
  end
end
