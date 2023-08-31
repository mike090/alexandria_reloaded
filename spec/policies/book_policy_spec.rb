# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookPolicy do
  permissions :index?, :show? do
    it 'grants access for all' do
      expect(described_class).to permit(nil, Book)
    end
  end

  permissions :create?, :update?, :destroy? do
    it 'denies access for role "user"' do
      expect(described_class).not_to permit(build(:user), Book)
    end

    it 'grants access for admins' do
      expect(described_class).to permit(build(:admin), Book)
    end
  end
end
