# frozen_string_literal: true

class Payment < ApplicationRecord
  belongs_to :book
  belongs_to :user

  store :error
  monetize :price_cents
  enum status: { created: 0, confirmed: 1, rejected: 2 }

  validates :token, presence: true
  validate :can_create_duplicated_payment, on: :create

  before_create :generate_idempotency_key, :set_price

  def confirm!(charge_id)
    update charge_id:, status: :confirmed
  end

  def error!(error)
    update error:, status: :rejected
  end

  private

  def generate_idempotency_key
    self.idempotency_key = "#{Time.now}/#{user.id}/#{book.id}"
  end

  def set_price
    self.price = book.price
  end

  def can_create_duplicated_payment
    payment = Payment.not_rejected.find_by(user:, book:)
    return unless payment

    message = payment.confirmed? ? 'has already been purchased' : 'has uncompleated payment'
    errors.add(:book, message)
  end
end
