# frozen_string_literal: true

require 'rails_helper'
require 'email_spec'
require 'email_spec/rspec'

RSpec.describe UserMailer do
  describe '#confirmation_email' do
    let(:user) { create(:user) }
    let(:mail) { described_class.confirmation_email(user) }

    it 'renders the headers' do
      expect(mail).to deliver_to(user.email)
      expect(mail).to have_subject(/Confirm your Account!/)
      expect(mail).to deliver_from('admin@alexandria.com')
    end

    it 'renders the body with confirmation url' do
      expect(mail).to have_body_text(/#{user_confirmation_url(user.confirmation_token)}/)
    end

    it 'updates users confirmation_sent_at attribute' do
      expect(user.confirmation_sent_at).to be_nil
      described_class.confirmation_email(user).deliver_now
      expect(user.reload.confirmation_sent_at).not_to be_nil
    end
  end

  describe '#reset_password' do
    let(:user) { create(:user, :reset_password) }
    let(:mail) { described_class.reset_password(user) }

    it 'renders the headers' do
      expect(mail).to deliver_to(user.email)
      expect(mail).to have_subject(/Reset your password/)
      expect(mail).to deliver_from('admin@alexandria.com')
    end

    it 'renders the body with reset url' do
      expect(mail).to have_body_text(/#{password_reset_url(user.reset_password_token)}/)
    end
  end
end
