# frozen_string_literal: true

class AccessTokensController < ApplicationController
  before_action :authenticate_user, only: :destroy

  def create
    user = User.find_by!(email: login_params[:email])

    if user.authenticate(login_params[:password])
      access_token = recreate_access_token(user)
      embed_user
      render serialize(access_token, { token: access_token.generate_token }).merge(status: :created)
    else
      render status: :unprocessable_entity, json: { error: { message: 'Invalid credentials.' } }
    end
  end

  def destroy
    access_token.destroy
    render status: :no_content
  end

  private

  def login_params
    @login_params ||= params.require(:data).permit(:email, :password)
  end

  def recreate_access_token(user)
    AccessToken.find_by(user:, api_key:).try(:destroy)
    AccessToken.create(user:, api_key:)
  end

  def embed_user
    params[:embed] = params[:embed] ? params[:embed].prepend('user,') : 'user'
  end
end
