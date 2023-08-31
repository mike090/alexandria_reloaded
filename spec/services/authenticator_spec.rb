# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Authenticator do
  subject(:authenticator) { described_class.new(auth_str) }

  let(:auth_str) do
    "Alexandria-Token api_key=#{api_key.id}:#{api_key.key}
										access_token=#{access_token.user_id}:#{token}"
  end
  let(:access_token) { create(:access_token) }
  let(:api_key) { access_token.api_key }
  let(:token) { access_token.generate_token }

  describe '#api_key' do
    context 'with existing api key' do
      it 'returns the api key' do
        expect(authenticator.api_key).to eq(api_key)
      end
    end

    context 'with disabled api key' do
      it 'returns nil' do
        api_key.disable
        expect(authenticator.api_key).to be_nil
      end
    end

    context 'with non existing api key' do
      let(:auth_str) do
        "Alexandria-Token api_key=1:fake
										access_token=#{access_token.user_id}:#{token}"
      end

      it 'returns nil' do
        expect(authenticator.api_key).to be_nil
      end
    end
  end

  describe '#access_token' do
    context 'with existing access token' do
      it 'returns the access token' do
        expect(authenticator.access_token).to eq(access_token)
      end
    end

    context 'with expired access token' do
      let(:access_token) { create(:access_token, created_at: 15.days.ago) }

      it 'returns nil' do
        expect(authenticator.access_token).to be_nil
      end
    end

    context 'with fake token' do
      let(:token) { 'fake' }

      it 'returns nil' do
        expect(authenticator.access_token).to be_nil
      end
    end

    context 'with fake api key' do
      let(:auth_str) do
        "Alexandria-Token api_key=1:fake
										access_token=#{access_token.user_id}:#{token}"
      end

      it 'returns nil' do
        expect(authenticator.access_token).to be_nil
      end
    end
  end
end
