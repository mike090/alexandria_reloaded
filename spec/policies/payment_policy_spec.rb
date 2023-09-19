# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PaymentPolicy do
  describe '.scope' do
    let(:admin) { create(:admin) }
    let(:user)  { create(:user) }
    let(:book)  { create(:book) }
    let(:admin_payment) { create(:payment, user: admin, book:) }
    let(:user_payment)  { create(:payment, user:, book:) }

    before { admin_payment && user_payment }

    context 'when admin' do
      let(:scope) { PaymentPolicy::Scope.new(admin, Payment).resolve }

      it 'returns all the purchases' do
        expect(scope.count).to eq(Payment.all.count)
      end
    end

    context 'when regular user' do
      let(:scope) { PaymentPolicy::Scope.new(user, Payment).resolve }

      it 'returns only purchases that belong to the user' do
        expect(scope).to include(user_payment)
        expect(scope).not_to include(admin_payment)
      end
    end
  end

  permissions :index?, :create? do
    it 'grants access' do
      expect(described_class).to permit(User.new, Payment)
    end
  end

  permissions :show? do
    context 'when regular user' do
      it 'grants access for users purchases' do
        user = User.new
        expect(described_class).to permit(user, Payment.new(user:))
      end

      it 'denies access for another users purchases' do
        expect(described_class).not_to permit(User.new, Payment.new)
      end
    end

    context 'when admin' do
      it 'grants access' do
        expect(described_class).to permit(build(:admin), Payment.new)
      end
    end
  end
end
