# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PasswordReset::Completion do
  subject(:reset) { described_class.new(user.reset_password_token) }

  let(:user) { create(:user, :reset_password) }

  it { is_expected.to validate_presence_of(:token) }

  it 'raises ActiveRecord::RecordNotFound when token not exists' do
    described_class.new user.reset_password_token
    expect { described_class.new('fake') }.to raise_error(ActiveRecord::RecordNotFound)
  end

  describe '#redirect_url' do
    it 'returns users reset_password_redirect_url' do
      expect(reset.redirect_url).to eq(user.reset_password_redirect_url)
    end
  end

  describe '#update' do
    context 'with valid params' do
      it 'update users password' do
        expect(reset.update({ password: 'new_password' })).to be_truthy
        expect(user.reload.authenticate('new_password')).to be_truthy
      end
    end

    context 'with invalid password' do
      it 'returns false' do
        expect(reset.update({ password: '' })).to be_falsey
        expect(reset.errors).to include(:password)
        expect(user.authenticate('password')).to be_truthy
      end
    end
  end
end
