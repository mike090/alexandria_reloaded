# frozen_string_literal: true

module PasswordReset
  class Completion
    include ActiveModel::Model

    attr_accessor :token, :password

    validates :token, presence: true
    validates :password, presence: true, length: { minimum: 8 }

    def initialize(token)
      raise ActiveRecord::RecordNotFound unless token

      @token = token
      @user = User.find_by!(reset_password_token: token)
    end

    def redirect_url
      @user.reset_password_redirect_url
    end

    def update(update_params)
      @password = update_params[:password]
      validate && update_model
    end

    private

    def update_model
      @user.update({
                     password:,
                     reset_password_token: nil,
                     reset_password_redirect_url: nil,
                     reset_password_sent_at: nil
                   }) || begin
                     @user.errors
                     false
                   end
    end
  end
end
