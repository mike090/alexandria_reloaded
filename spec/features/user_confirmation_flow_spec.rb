# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'User Confirmation Flow', type: :request do
  include_context 'authenticate client'

  it 'confirm users email' do
    user = create(:user)
    expect(user).not_to be_confirmed
    # Step 1 - creating new confirmation
    post(user_confirmations_path, params: { email: user.email }, headers:)
    expect(response).to have_http_status(:created)
    # Step 2 - completing confirmation
    perform_enqueued_jobs
    email = ActionMailer::Base.deliveries.last
    confirmation_url = /href\s*=\s*"([^"]*)"/.match(email.body.encoded)[1]
    get URI(confirmation_url).path
    expect(response).to have_http_status(:ok)
    expect(user.reload).to be_confirmed
  end
end
