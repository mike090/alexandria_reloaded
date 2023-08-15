# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EmailConfirmation::Initialization do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }

    it 'is expected to validate that email exists' do
      user = create(:user)
      subject = described_class.new(email: 'fake@example.com')
      expect(subject).to be_invalid
      expect(subject.errors).to include(:email)
      subject = described_class.new email: user.email
      expect(subject).to be_valid
    end

    it 'is expected to validate that email unconfirmed' do
      user = create(:user, :confirmed)
      subject = described_class.new(email: user.email)
      expect(subject).to be_invalid
      expect(subject.errors).to include(:email)
    end
  end

  describe '#save' do
    context 'when model is invalid' do
      it 'returns false and populate errors' do
        user = create(:user, :confirmed)
        subject = described_class.new(email: user.email)
        expect(subject.save).to be_falsey
        expect(subject.errors).to include(:email)
      end
    end

    context 'when model is valid' do
      it 'returns true, updates users attributes' do
        user = create(:user)
        subject = described_class.new email: user.email, redirect_url: 'some_url'
        expect(subject.save).to be_truthy
        user.reload
        expect(user.confirmation_sent_at).to be_nil
        expect(user.confirmation_token).to eq(subject.token)
        expect(user.confirmation_redirect_url).to eq(subject.redirect_url)
      end
    end
  end
end
