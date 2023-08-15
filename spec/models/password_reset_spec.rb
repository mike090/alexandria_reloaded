# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PasswordReset do
  describe '.new' do
    it 'returns PasswordReset::Initialization model' do
      user = create(:user, :confirmed)
      expect(described_class.new(email: user.email,
                                 redirect_url: 'http://example.com')).to be_a PasswordReset::Initialization
    end
  end

  describe '.find' do
    it 'returns PasswordReset::Completion model' do
      user = create(:user, :reset_password)
      expect(described_class.find(user.reset_password_token)).to be_a PasswordReset::Completion
    end
  end
end
