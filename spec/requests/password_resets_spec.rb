# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Password Reset Requests' do
  include_context 'authenticate client'

  describe 'POST /api/password_resets' do
    before { post password_resets_path, params:, headers: }

    let(:user) { create(:user, :confirmed) }
    let(:params) { { email: user.email, redirect_url: 'fake_url' } }

    context 'with valid parameters' do
      it 'returns HTTP status 201, set users attributes and sent email' do
        expect(response).to have_http_status(:created)
        expect(user.reload.reset_password_token).not_to be_nil
        expect(user.reset_password_sent_at).to be_nil
        expect(user.reset_password_redirect_url).to eq("fake_url?token=#{user.reset_password_token}")
        assert_enqueued_email_with UserMailer, :reset_password, args: [user]
      end
    end

    context 'without redirect url' do
      let(:params) { { email: user.email } }

      it 'returns HTTP status 422 with error information' do
        expect(response).to have_http_status :unprocessable_entity
        expect(json_body['error']['invalid_params']).to include('redirect_url')
      end
    end

    context 'without email' do
      let(:params) { { email: '' } }

      it 'returns HTTP status 422 with error information' do
        expect(response).to have_http_status :unprocessable_entity
        expect(json_body['error']['invalid_params']).to include('email')
      end
    end

    context 'when email unconfirmed' do
      let(:user) { create(:user) }

      it 'returns HTTP status 422 with error information' do
        expect(response).to have_http_status :unprocessable_entity
        expect(json_body['error']['invalid_params']).to include('email')
      end
    end

    context 'when email not exists' do
      let(:params) { { email: 'fake@example.com', redirect_url: 'example.com' } }

      it 'returns HTTP status 422 with error information' do
        expect(response).to have_http_status :unprocessable_entity
        expect(json_body['error']['invalid_params']).to include('email')
      end
    end
  end

  describe 'GET /api/password_resets/:id' do
    before { get password_reset_path(token) }

    context 'with valid parameters' do
      let(:user) { create(:user, :reset_password) }
      let(:token) { user.reset_password_token }

      it 'redirects request to reset_password_redirect_url' do
        expect(response).to redirect_to(user.reset_password_redirect_url)
      end
    end

    context 'with invalid token' do
      let(:token) { 'fake' }

      it 'returns HTTP status 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'PATCH /api/password_resets/:id' do
    before { patch password_reset_path(token), params:, headers: }

    let(:user) { create(:user, :reset_password) }
    let(:token) { user.reset_password_token }
    let(:params) { { password: 'new_password' } }

    context 'with valid parameters' do
      it 'sets new password, reset users attributes' do
        expect(user.reload.authenticate('new_password')).to be_truthy
        expect(user.reset_password_redirect_url).to be_nil
        expect(user.reset_password_sent_at).to be_nil
        expect(user.reset_password_token).to be_nil
      end
    end

    context 'with invalid token' do
      let(:token) { 'fake' }

      it 'returns HTTP status 404' do
        expect(response).to have_http_status :not_found
      end
    end

    context 'when invalid password' do
      let(:params) { { password: 'abc' } }

      it 'returns HTTP status 422 with error information' do
        expect(response).to have_http_status :unprocessable_entity
        expect(json_body['error']['invalid_params']).to include('password')
      end
    end
  end
end
