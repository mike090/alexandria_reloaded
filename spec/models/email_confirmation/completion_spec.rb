# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EmailConfirmation::Completion do
  subject(:confirmation) { described_class.new user.confirmation_token }

  let(:user) { create(:user) }

  it { is_expected.to validate_presence_of(:token) }

  it 'raises ActiveRecord::RecordNotFound when token not exists' do
    described_class.new user.confirmation_token
    expect { described_class.new('fake') }.to raise_error(ActiveRecord::RecordNotFound)
  end

  describe '#save' do
    it 'returns true and confirm user email' do
      expect(confirmation.save).to be_truthy
      user.reload
      expect(user).to be_confirmed
    end
  end
end
