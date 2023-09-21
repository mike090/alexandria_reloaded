# frozen_string_literal: true

class PaymentsController < ApplicationController
  before_action :authenticate_user
  before_action :authorize_action, only: %i[show create]

  def index
    payments = orchestrate_query(policy_scope(Payment))
    render serialize(payments)
  end

  def show
    render serialize(payment)
  end

  def create
    new_payment = current_user.payments.new(payment_params)
    if new_payment.save
      render serialize(new_payment).merge(status: :created, location: new_payment)
    else
      unprocessable_entity!(new_payment)
    end
  end

  private

  def payment
    @payment ||= Payment.find(params[:id])
  end

  alias resource payment

  def payment_params
    @payment_params ||= params.require(:data).permit(:book_id, :token)
  end
end
