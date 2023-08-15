# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'User Registration Flow', type: :request do
  include_context 'authenticate client'

  it 'registers and confirm user' do
    # Step 1 user registration
    post(users_path, params: { data: attributes_for(:user) }, headers:)
    expect(response).to have_http_status :created
    user = User.find response.headers['Location'].split('/').last.to_i
    expect(user).not_to be_nil
    expect(user).not_to be_confirmed

    # Step 2 email confirmation
    perform_enqueued_jobs
    email = ActionMailer::Base.deliveries.last
    confirmation_url = /href\s*=\s*"([^"]*)"/.match(email.body.encoded)[1]
    get URI(confirmation_url).path
    expect(response).to have_http_status :ok
    user.reload
    expect(user).to be_confirmed
  end
end
