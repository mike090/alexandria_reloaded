# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PasswordReset::Initialization do
  subject(:reset) { described_class.new(email: user.email, redirect_url: 'http://example.com') }

  let(:user) { create(:user, :confirmed) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:redirect_url) }

    it 'is expected to validate that email exists' do
      expect(reset).to be_valid
      subject = described_class.new(email: 'fake@example.com', redirect_url: 'http://example.com')
      expect(subject).to be_invalid
      expect(subject.errors).to include(:email)
    end

    it 'is expected that email confirmed' do
      user = create(:user)
      subject = described_class.new(email: user.email, redirect_url: 'http://example.com')
      expect(subject).to be_invalid
      expect(subject.errors).to include(:email)
    end
  end

  describe '#save' do
    context 'when model is valid' do
      it 'returns true, updates users attributes' do
        expect(user.reset_password_token).to be_nil
        expect(user.reset_password_redirect_url).to be_nil
        expect(reset.save).to be_truthy
        expect(user.reload.reset_password_token).not_to be_nil
        expect(user.reset_password_redirect_url).to eq("#{reset.redirect_url}?token=#{user.reset_password_token}")
        expect(user.reset_password_sent_at).to be_nil
      end
    end

    context 'when model is invalid' do
      it 'returns false and populate errors' do
        subject = described_class.new(email: user.email, redirect_url: '')
        expect(subject.save).to be_falsey
        expect(subject.errors).to include(:redirect_url)
      end
    end
  end
end
