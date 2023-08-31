# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Authentication' do
  describe 'Client Authentication' do
    let(:access_token) { create(:access_token) }
    let(:api_key) { access_token.api_key }
    let(:token) { access_token.generate_token }
    let(:headers) { { 'HTTP_AUTHORIZATION' => auth_str } }

    context 'with invalid authentication scheme' do
      let(:auth_str) { "Bearer api_key=#{api_key.id}:#{api_key.key}" }

      it 'returns HTTP status 401 Unauthorized' do
        get(books_path, headers:)
        expect(response).to have_http_status :unauthorized
      end
    end

    context 'with valid authentication scheme' do
      context 'with invalid API Key' do
        let(:auth_str) { 'Alexandria-Token api_key=1:fake' }

        it 'returns HTTP status 401 Unauthorized' do
          get(books_path, headers:)
          expect(response).to have_http_status :unauthorized
        end
      end

      context 'with disabled API Key' do
        let(:auth_str) { "Alexandria-Token api_key=#{api_key.id}:#{api_key.key}" }

        it 'returns HTTP status 401 Unauthorized' do
          api_key.disable
          get(books_path, headers:)
          expect(response).to have_http_status :unauthorized
        end
      end

      context 'with valid API Key' do
        let(:auth_str) { "Alexandria-Token api_key=#{api_key.id}:#{api_key.key}" }

        it 'returns HTTP status 200 Ok' do
          get(books_path, headers:)
          expect(response).to have_http_status :ok
        end
      end
    end
  end
end
