# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Authentication' do
  describe 'Client Authentication' do
    before { get '/api/books', headers: }

    context 'with invalid authentication scheme' do
      let(:headers) { { 'HTTP_AUTHORIZATION' => '' } }

      it 'returns HTTP status 401 Unauthorized' do
        expect(response).to have_http_status :unauthorized
      end
    end

    context 'with valid authentication scheme' do
      let(:headers) { { 'HTTP_AUTHORIZATION' => "Alexandria-Token api_key=#{api_key.id}:#{api_key.key}" } }

      context 'with invalid API Key' do
        let(:api_key) do
          instance_double(ApiKey).tap do |key|
            allow(key).to receive(:id).and_return(1)
            allow(key).to receive(:key).and_return('fake')
          end
        end

        it 'returns HTTP status 401 Unauthorized' do
          expect(response).to have_http_status :unauthorized
        end
      end

      context 'with disabled API Key' do
        let(:api_key) { ApiKey.create.tap(&:disable) }

        it 'returns HTTP status 401 Unauthorized' do
          expect(response).to have_http_status :unauthorized
        end
      end

      context 'with valid API Key' do
        let(:api_key) { ApiKey.create }

        it 'returns HTTP status 200 Ok' do
          expect(response).to have_http_status :ok
        end
      end
    end
  end
end
