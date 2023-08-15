# frozen_string_literal: true

class UserConfirmationsController < ApplicationController
  skip_before_action :validate_auth_scheme, only: :show
  skip_before_action :authenticate_client, only: :show

  def show
    confirmation = EmailConfirmation.find(params[:id])
    if confirmation.save
      if confirmation.redirect_url
        redirect_to(confirmation.redirect_url, allow_other_host: true)
      else
        render(plain: 'You are now confirmed!')
      end
    else
      unprocessable_entity!(confirmation)
    end
  end

  def create
    confirmation = EmailConfirmation.new(**confirmation_params)
    if confirmation.save
      UserMailer.confirmation_email(confirmation.user).deliver_later
      render(status: :created, plain: 'Confirmation instructions will be sent by email')
    else
      unprocessable_entity!(confirmation)
    end
  end

  private

  def confirmation_params
    @confirmation_params ||= params.permit(:email, :redirect_url)
  end
end
