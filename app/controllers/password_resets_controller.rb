# frozen_string_literal: true

class PasswordResetsController < ApplicationController
  skip_before_action :validate_auth_scheme, only: :show
  skip_before_action :authenticate_client, only: :show

  def create
    password_reset = PasswordReset.new(init_params)
    if password_reset.save
      UserMailer.reset_password(password_reset.user).deliver_later
      render status: :created, plain: 'Reset instructions will be send by email'
    else
      unprocessable_entity!(password_reset)
    end
  end

  def show
    redirect_to(password_reset.redirect_url, allow_other_host: true)
  end

  def update
    if password_reset.update(update_params)
      render status: :no_content
    else
      unprocessable_entity!(password_reset)
    end
  end

  private

  def password_reset
    @password_reset ||= PasswordReset.find(params[:id])
  end

  def init_params
    @init_params ||= params.permit(:email, :redirect_url)
  end

  def update_params
    @update_params ||= params.permit(:password)
  end
end
