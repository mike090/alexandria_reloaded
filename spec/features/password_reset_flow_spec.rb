# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Password Reset Flow', type: :request do
  include_context 'authenticate client'

  it 'reset user password' do
    user = create(:user, :confirmed)
    expect(user.authenticate('password')).to be_truthy
    # Step 1 - create password reset
    post(password_resets_path, params: { email: user.email, redirect_url: 'example.com' }, headers:)
    expect(response).to have_http_status :created
    # Step 2 - go to link from email
    perform_enqueued_jobs
    email = ActionMailer::Base.deliveries.last
    url = /href\s*=\s*"([^"]*)"/.match(email.body.encoded)[1]
    get url
    expect(response).to have_http_status :found
    token = /token=([^"]*)/.match(response.redirect_url)[1]
    # Step 3 - set new password
    patch(password_reset_path(token), params: { password: 'new_password' }, headers:)
    expect(response).to have_http_status :no_content
    expect(user.reload.authenticate('new_password')).to be_truthy
  end
end
