# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :access_tokens, dependent: :delete_all
  has_many :payments
  has_many :purchases, -> { where status: :confirmed }, class_name: 'Payment'
  has_many :bought_books, through: :purchases, source: :book

  attribute :confirmation_token, default: -> { SecureRandom.hex }

  enum role: %i[user admin]

  validates :email, presence: true,
                    uniqueness: true,
                    length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }

  validates :password, presence: true, length: { minimum: 8 }, if: :new_record?
  validates :given_name, length: { maximum: 100 }
  validates :family_name, length: { maximum: 100 }

  validates :confirmation_token, presence: true,
                                 uniqueness: { case_sensitive: true }, unless: :confirmed?

  validates :confirmation_token, absence: true, if: :confirmed?
  validates :confirmation_redirect_url, absence: true, if: :confirmed?
  validates :confirmation_sent_at, absence: true, if: :confirmed?

  validates :reset_password_redirect_url, presence: true, if: :reset_password_token

  scope :confirmed, -> { where.not(confirmed_at: nil) }
  scope :unconfirmed, -> { where(confirmed_at: nil) }

  def email=(value)
    super value&.downcase || value
  end

  def confirmed?
    !!confirmed_at
  end

  def mark_confirmation_mail_sent
    update(confirmation_sent_at: Time.now.utc)
  end

  def mark_reset_password_mail_sent
    update(reset_password_sent_at: Time.now.utc)
  end
end
