# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'User Auth Flow', type: :request do
  include_context 'headers'

  before { authenticate_client }

  let(:email) { 'john@example.com' }
  let(:password) { 'password' }
  let(:params) { { email:, password:, given_name: 'Johnny' } }

  it 'authenticate a new user' do
    # Step 1 - Create a user
    post(users_path, params: { data: params }, headers:)
    expect(response).to have_http_status :created
    id = json_body['data']['id']

    # Step 2 - Try to update profile data
    patch(user_path(id), params: { data: { given_name: 'John' } }, headers:)
    expect(response).to have_http_status :unauthorized

    # Step 3 - Login
    post(access_tokens_path, params: { data: { email:, password: } }, headers:)
    expect(response).to have_http_status :created
    expect(json_body['data']['user']['email']).to eq(email)
    token = json_body['data']['token']
    user_id = json_body['data']['user']['id']

    # Step 4 - Update user profile
    headers['HTTP_AUTHORIZATION'] << { access_token: "#{user_id}:#{token}" }
    patch(user_path(id), params: { data: { given_name: 'John' } }, headers:)
    expect(response).to have_http_status :ok
    expect(json_body['data']['given_name']).to eq('John')
    expect(User.find(user_id).given_name).to eq('John')

    # Step 5 - Try to list users
    get(users_path, headers:)
    expect(response).to have_http_status :forbidden

    # Step 6 - Logout
    delete(access_tokens_path, headers:)
    expect(response).to have_http_status :no_content

    # # Step 7 - Try to show profile with invalid token
    get(user_path(user_id), headers:)
    expect(response).to have_http_status :unauthorized
  end
end
