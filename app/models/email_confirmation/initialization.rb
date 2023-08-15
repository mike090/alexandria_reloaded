# frozen_string_literal: true

module EmailConfirmation
  class Initialization
    include ActiveModel::Model

    attr_accessor :email, :redirect_url

    validates :email, presence: true
    validate :email_unconfirmed

    def save
      validate && user.update({
                                confirmation_token: token,
                                confirmation_redirect_url: redirect_url,
                                confirmation_sent_at: nil
                              })
    end

    def token
      @token ||= SecureRandom.hex
    end

    def user
      @user ||= User.find_by(email:)
    end

    private

    def email_unconfirmed
      user
      errors.add(:email, :email_not_found) unless @user
      errors.add(:email, :email_confirmed) if @user&.confirmed?
    end
  end
end
