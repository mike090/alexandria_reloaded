# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PurchasesRequests' do
  include_context 'headers'

  describe 'GET /api/purchases' do
    let(:user) { create(:user) }
    let(:admin) { create(:admin) }
    let(:book) { create(:book) }
    let(:payments) do
      [
        create(:payment, :rejected, user:, book:),
        create(:payment, :confirmed, user:, book:),
        create(:payment, :rejected, user: admin, book:),
        create(:payment, :confirmed, user: admin, book:)
      ]
    end

    before { payments }

    context 'when not authenticated' do
      before { get purchases_path, headers: }

      include_examples 'when not authenticated'
    end

    context 'when authenticated' do
      context 'when regular user' do
        before do
          authenticate_client
          authenticate_user
          get purchases_path, headers:
        end

        it 'returns only users purchases' do
          expect(response).to have_http_status :ok
          expect(response_data.count).to eq(Payment.confirmed.where(user:).count)
          expect(response_data).to all(include('user_id' => user.id))
          expect(response_data).to all(include(*PaymentPresenter.build_attributes))
        end
      end

      context 'when admin' do
        before do
          authenticate_client
          authenticate_user user: admin
          get purchases_path, headers:
        end

        it 'returns all purchases' do
          expect(response).to have_http_status :ok
          expect(response_data.count).to eq(Payment.confirmed.count)
          expect(response_data).to all(include(*PaymentPresenter.build_attributes))
        end
      end
    end
  end

  describe 'GET /api/purchases/:id' do
    let(:user) { create(:user) }
    let(:admin) { create(:admin) }
    let(:book) { create(:book) }
    let(:purchases) { [user_purchase, admin_purchase] }
    let(:user_purchase) { create(:payment, :confirmed, user:, book:) }
    let(:admin_purchase) { create(:payment, :confirmed, user: admin, book:) }

    context 'when not authenticated' do
      before { get purchase_path(user_purchase), headers: }

      include_examples 'when not authenticated'
    end

    context 'when authenticated' do
      context 'when regular user' do
        before do
          authenticate_client
          authenticate_user
          get purchase_path(id), headers:
        end

        context 'when purchase exists' do
          context 'when authorized' do
            let(:id) { user_purchase.id }

            it 'returns purchase' do
              expect(response).to have_http_status :ok
              expect(response_data['id']).to eq(id)
              expect(response_data.keys).to eq(PaymentPresenter.build_attributes)
            end
          end

          context 'when not authorized' do
            let(:id) { admin_purchase.id }

            include_examples 'when not authorized'
          end
        end

        context 'when purchase not exists' do
          let(:id) { -1 }

          include_examples 'when resource not exists'
        end
      end

      context 'when admin' do
        before do
          authenticate_client
          authenticate_user user: admin
          get purchase_path(id), headers:
        end

        let(:id) { user_purchase.id }

        it 'returns purchase' do
          expect(response).to have_http_status :ok
          expect(response_data['id']).to eq(id)
          expect(response_data.keys).to eq(PaymentPresenter.build_attributes)
        end
      end
    end
  end
end
