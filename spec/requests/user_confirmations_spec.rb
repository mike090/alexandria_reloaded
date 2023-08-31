# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'UserConfirmations' do
  include_context 'headers'
  before { authenticate_client }

  describe 'GET /api/user_confirmations/:confirmation_token' do
    before { get "/api/user_confirmations/#{confirmation_token}" }

    context 'with existing token' do
      let(:confirmation_token) { user.confirmation_token }

      context 'with confirmation redirect url' do
        let(:user) { create(:user, :confirmation_redirect_url) }

        it 'updates user and redirects request' do
          expect(response).to redirect_to(user.confirmation_redirect_url)
          user.reload
          expect(user.confirmation_token).to be_nil
          expect(user.confirmed_at).not_to be_nil
        end
      end

      context 'without confirmation redirect url' do
        let(:user) { create(:user, :confirmation_no_redirect_url) }

        it 'returns confirmation result' do
          expect(response).to have_http_status :ok
          user.reload
          expect(user.confirmation_token).to be_nil
          expect(user.confirmed_at).not_to be_nil
          expect(response).to have_http_status :ok
          expect(response.body).to eq 'You are now confirmed!'
        end
      end
    end

    context 'with nonexistent token' do
      let(:confirmation_token) { 'fake' }

      it 'returns HTTP status 404 Not Found' do
        expect(response).to have_http_status :not_found
      end
    end
  end

  describe 'POST /api/user_confirmations' do
    include ActionMailer::TestHelper

    before { post '/api/user_confirmations', params:, headers: }

    context 'when user exists' do
      let(:params) { { email: user.email, redirect_url: 'some_url' } }

      context 'when email not confirmed' do
        let(:user) { create(:user) }

        it 'returns HTTP status 201, send email notification and' do
          expect(response).to have_http_status :created
          user.reload
          expect(user.confirmation_token).not_to be_nil
          expect(user.confirmation_redirect_url).to eq('some_url')
          expect(user.confirmation_sent_at).to be_nil
          assert_enqueued_email_with UserMailer, :confirmation_email, args: [user]
          perform_enqueued_jobs
          expect(user.reload.confirmation_sent_at).not_to be_nil
        end
      end

      context 'when email confirmed' do
        let(:user) { create(:user, :confirmed) }

        it 'returns HTTP status 422 with errors' do
          expect(response).to have_http_status :unprocessable_entity
          expect(json_body['error']['invalid_params']).to(
            include('email' => [I18n.t('activemodel.errors.messages.email_confirmed')])
          )
        end
      end
    end

    context 'when user not exists' do
      let(:params) { { email: 'fake@example.com' } }

      it 'returns HTTP status 422' do
        expect(response).to have_http_status :unprocessable_entity
        expect(json_body['error']['invalid_params']).to(
          include('email' => [I18n.t('activemodel.errors.messages.email_not_found')])
        )
      end
    end
  end
end
