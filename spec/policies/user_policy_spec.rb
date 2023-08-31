# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserPolicy do
  permissions :create? do
    it 'grants access for all' do
      expect(described_class).to permit(nil, User)
    end
  end

  permissions :show?, :update?, :destroy? do
    it 'denies access for role "user"' do
      expect(described_class).not_to permit(build(:user), User)
    end

    it 'grants access for admin role' do
      expect(described_class).to permit(build(:admin), User)
    end

    it 'grants access for owner' do
      user = build(:user)
      expect(described_class).to permit(user, user)
    end
  end

  permissions :index? do
    it 'grants access for admins' do
      expect(described_class).to permit(build(:admin), User)
    end

    it 'denies access for another' do
      expect(described_class).not_to permit(build(:user), User)
    end
  end
end
