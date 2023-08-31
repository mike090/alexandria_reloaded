# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Access Tokens Requests' do
  include_context 'headers'

  describe 'POST /api/access_tokens' do
    let(:params) { { data: { email: user.email, password: user.password } } }
    let(:user) { create(:user) }

    context 'without authentication' do
      before { post(access_tokens_path, params:, headers:) }

      include_examples 'when not authenticated'

      context 'with invalid API key' do
        before do
          headers['HTTP_AUTHORIZATION'] << 'Alexandria-Token'
          headers['HTTP_AUTHORIZATION'] << { api_key: "#{api_key.id}:fake" }
          post(access_tokens_path, params:, headers:)
        end

        let(:api_key) { ApiKey.create! }
        let(:user) { create(:user) }
        let(:params) { { data: { email: user.email, password: user.password } } }

        it 'returns HTTP status 401 Forbidden' do
          expect(response).to have_http_status :unauthorized
        end
      end
    end

    context 'with authentication' do
      before do
        authenticate_client
        post(access_tokens_path, params:, headers:)
      end

      context 'with existing user' do
        it 'returns token with embeded user' do
          expect(response).to have_http_status :created
          token = json_body['data']['token']
          access_token = AccessToken.find(json_body['data']['id'])
          expect(access_token.authenticate(token)).to be_truthy
          expect(json_body['data']['user']).not_to be_nil
        end
      end

      context 'with nonexistent user' do
        let(:params) { { data: { email: 'fake@example.com', password: 'password' } } }

        it 'returns HTTP status 404 Not Found' do
          expect(response).to have_http_status :not_found
        end
      end

      context 'with invalid password' do
        let(:user) { create(:user) }
        let(:params) { { data: { email: user.email, password: 'fake' } } }

        it 'returns HTTP status 422 Unprocessable Entity' do
          expect(response).to have_http_status :unprocessable_entity
          expect(json_body['error']['message']).to eq('Invalid credentials.')
        end
      end
    end
  end

  describe 'DELETE /api/access_tokens' do
    context 'with valid API key' do
      before { authenticate_client }

      context 'with valid access token' do
        it 'destroys the access token' do
          access_token = authenticate_user
          delete(access_tokens_path, headers:)
          expect(response).to have_http_status :no_content
          expect(AccessToken.find_by(id: access_token.id)).to be_nil
        end
      end

      context 'with invalid access token' do
        it 'returns HTTP status Unauthorized' do
          headers['HTTP_AUTHORIZATION'] << 'access_token=1:fake_token'
          delete(access_tokens_path, headers:)
          expect(response).to have_http_status :unauthorized
        end
      end
    end

    context 'with invalid API key' do
      it 'returns HTTP status Unauthorized' do
        delete(access_tokens_path, headers:)
        expect(response).to have_http_status :unauthorized
      end
    end
  end
end
