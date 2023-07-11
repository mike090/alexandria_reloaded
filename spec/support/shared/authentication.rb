# frozen_string_literal: true

shared_context 'authenticate client' do
  let(:api_key) { ApiKey.create }
  let(:headers) { { 'HTTP_AUTHORIZATION' => "Alexandria-Token api_key=#{api_key.id}:#{api_key.key}" } }
end
