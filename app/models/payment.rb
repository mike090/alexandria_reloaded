# frozen_string_literal: true

class Payment < ApplicationRecord
  belongs_to :book
  belongs_to :user

  store :error
  monetize :price_cents

  enum status: %i[created confirmed sent rejected], _default: :created

  validates :token, presence: true
  validates :charge_id, presence: true, unless: :created?
  validates :error, presence: true, if: :rejected?
  validate :can_create_duplicated_payment, on: :create

  before_create :set_price

  private

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
