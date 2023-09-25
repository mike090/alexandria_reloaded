# frozen_string_literal: true

class PaymentChargeJob < ApplicationJob
  queue_as :default

  STRIPE_STATUS_MAP = { 'succeeded' => 'confirmed', 'pending' => 'sent', 'failed' => 'rejected' }.freeze

  def perform(payment_id)
    @payment = Payment.find(payment_id)
    return unless @payment.created?

    update_payment
  rescue Stripe::CardError => e
    reject_payment(e.error.to_h)
  rescue Stripe::APIConnectionError
    retry_job wait: 5.minutes, queue: :default
  rescue StandardError => e
    Rails.logger.error "#{self.class}: payment (id: #{@payment_id}) charge exception! Error: #{e.class} - #{e.message}"
  end

  private

  def reject_payment(error)
    @payment.error = error
    @payment.charge_id = error[:charge]
    @payment.rejected!
  end

  def update_payment
    new_status = STRIPE_STATUS_MAP[charge.status]
    @payment.charge_id = charge.id
    @payment.public_send "#{new_status}!"
  end

  def charge
    @charge ||= begin
      idempotency_key = Digest::SHA1.hexdigest(charge_params.to_s)
      Stripe::Charge.create(charge_params, { idempotency_key: })
    end
  end

  def charge_params
    @charge_params ||= {
      amount: @payment.price.fractional,
      currency: @payment.price.currency.to_s,
      source: @payment.token,
      metadata: { payment_id: @payment.id },
      description: "Charge for #{@payment.book.title} (payment ID: #{@payment.id})"
    }
  end
end
