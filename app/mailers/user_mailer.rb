# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def confirmation_email(user)
    @user = user
    @user.update(confirmation_sent_at: Time.now.utc)
    mail to: @user.email, subject: 'Confirm your Account!'
  end

  def reset_password(user)
    @user = user
    @user.update(reset_password_sent_at: Time.now)
    mail to: @user.email, subject: 'Reset your password'
  end
end
