# frozen_string_literal: true

module PasswordReset
  class Initialization
    include ActiveModel::Model

    attr_accessor :email, :redirect_url

    validates :email, presence: true
    validates :redirect_url, presence: true
    validate :email_confirmed

    def save
      validate && begin
        new_token = SecureRandom.hex
        user.update({
                      reset_password_token: new_token,
                      reset_password_sent_at: nil,
                      reset_password_redirect_url: build_redirect_url(new_token)
                    })
      end
    end

    def user
      @user ||= User.find_by(email:)
    end

    private

    def email_confirmed
      user
      errors.add(:email, :email_not_found) unless @user
      errors.add(:email, :email_unconfirmed) unless @user&.confirmed?
    end

    def build_redirect_url(token)
      separator = URI(redirect_url).query ? '&' : '?'
      "#{redirect_url}#{separator}token=#{token}"
    end
  end
end
