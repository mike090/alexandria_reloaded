# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EmailConfirmation do
  describe '.new' do
    it 'returns EmailConfirmation::Initialization model' do
      user = create(:user)
      expect(described_class.new(email: user.email)).to be_a EmailConfirmation::Initialization
    end
  end

  describe '.find' do
    it 'returns EmailConfirmation::Completion model' do
      user = create(:user)
      expect(described_class.find(user.confirmation_token)).to be_a EmailConfirmation::Completion
    end
  end
end
