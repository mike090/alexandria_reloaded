# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookDownloadPolicy do
  permissions :show? do
    context 'when admin' do
      it 'grants access' do
        expect(described_class).to permit(build(:admin), create(:book))
      end
    end

    context 'when regular user' do
      let(:user) { create(:user) }
      let(:book) { create(:book) }

      it 'denies access for not bought book' do
        expect(described_class).not_to permit(user, book)
      end

      it 'grants access for bought book' do
        create(:payment, :confirmed, book:, user:)
        expect(described_class).to permit(user, book)
      end
    end
  end
end
