# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    users = orchestrate_query(User)
    embed_page_navigation(users)
    render serialize(users)
  end

  def show
    render serialize(user)
  end

  def create
    new_user = User.new(user_params)
    if new_user.save
      UserMailer.confirmation_email(new_user).deliver_later
      # new_user.update_column(:confirmation_sent_at, Time.now)
      render serialize(new_user).merge(status: :created, location: new_user)
    else
      unprocessable_entity!(new_user)
    end
  end

  def update
    if user.update(user_params)
      render serialize(user).merge(status: :ok)
    else
      unprocessable_entity!(user)
    end
  end

  def destroy
    user.destroy
    render status: :no_content
  end

  private

  def user
    @user ||= User.find(params[:id])
  end

  def user_params
    params.require(:data).permit(:email, :password,
                                 :given_name, :family_name,
                                 :confirmation_redirect_url)
  end
end
