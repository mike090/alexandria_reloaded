# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PurchasePolicy do
  describe '.scope' do
    let(:admin) { create(:admin) }
    let(:user) { create(:user) }
    let(:rails_tuto) { create(:ruby_on_rails_tutorial) }
    let(:ruby_micro) { create(:ruby_microscope) }
    let(:admin_purchase) { create(:purchase, user: admin, book: rails_tuto) }
    let(:user_purchase) { create(:purchase, user:, book: ruby_micro) }

    before { admin_purchase && user_purchase }

    context 'when admin' do
      let(:scope) { PurchasePolicy::Scope.new(admin, Purchase.all).resolve }

      it 'returns all the purchases' do
        expect(scope.count).to eq(Purchase.all.count)
      end
    end

    context 'when regular user' do
      let(:scope) { PurchasePolicy::Scope.new(user, Purchase.all).resolve }

      it 'returns only purchases that belong to the user' do
        expect(scope).to include(user_purchase)
        expect(scope).not_to include(admin_purchase)
      end
    end
  end

  permissions :index?, :create? do
    it 'grants access' do
      expect(described_class).to permit(User.new, Purchase)
    end
  end

  permissions :show? do
    context 'when regular user' do
      it 'grants access for users purchases' do
        user = User.new
        expect(described_class).to permit(user, Purchase.new(user:))
      end

      it 'denies access for another users purchases' do
        expect(described_class).not_to permit(User.new, Purchase.new)
      end
    end

    context 'when admin' do
      it 'grants access' do
        expect(described_class).to permit(build(:admin), Purchase.new)
      end
    end
  end
end
