# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :book
  belongs_to :user

  before_save :generate_idempotency_key
  before_save :set_price

  store :error
  monetize :price_cents
  enum status: { created: 0, sent: 1, confirmed: 2, rejected: 3 }

  validates :price_cents, presence: true
  validates :book, presence: true
  validates :user, presence: true
  validates :token, presence: true

  def confirm!(charge_id)
    confirmed!
    update charge_id:
  end

  def error!(error)
    rejected!
    update error:
  end

  private

  def generate_idempotency_key
    self.idempotency_key = "#{Time.now}/#{user.id}/#{book.id}"
  end

  def set_price
    self.price = book.price
  end
end
