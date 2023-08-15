# frozen_string_literal: true

module EmailConfirmation
  class Completion
    include ActiveModel::Model

    attr_accessor :token, :redirect_url

    validates :token, presence: true

    def initialize(token)
      @token = token
      @user = User.unconfirmed.find_by!(confirmation_token: token)
      @redirect_url = @user.confirmation_redirect_url
    end

    def save
      validate && @user.update({
                                 confirmation_token: nil,
                                 confirmation_redirect_url: nil,
                                 confirmation_sent_at: nil,
                                 confirmed_at: Time.now.utc
                               })
    end
  end
end
