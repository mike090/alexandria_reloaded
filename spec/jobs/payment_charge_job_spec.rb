# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PaymentChargeJob do
  before { ActiveJob::Base.queue_adapter = :test }

  describe '#perform' do
    let(:casssette_name) { "stripe/charge/create/#{payment.token}" }

    context 'when charge succeded' do
      let(:payment) { create(:payment, token: 'tok_visa') }

      it 'save charge_id and set confirmed status to payment' do
        VCR.use_cassette casssette_name do
          described_class.perform_now payment.id
          expect(payment.reload).to be_confirmed
          expect(payment.charge_id).not_to be_nil
        end
      end
    end

    context 'when charge declined' do
      let(:payment) { create(:payment, token: 'tok_visa_chargeDeclinedLostCard') }

      it 'save charge_id, error and set rejected status to payment' do
        VCR.use_cassette casssette_name do
          described_class.perform_now payment.id
          expect(payment.reload).to be_rejected
          expect(payment.charge_id).not_to be_nil
          expect(payment.error).not_to be_blank
        end
      end
    end

    context 'when an exception occurs during charging' do
      let(:payment) { create(:payment, token: 'tok_visa') }

      context 'when Stripe::APIConnectionError' do
        before { allow(Stripe::Charge).to receive(:create).and_raise Stripe::APIConnectionError }

        it 'retry job and dont change payment' do
          expect { described_class.perform_now(payment.id) }.to have_enqueued_job(described_class).with(payment.id)
          expect(payment.reload.updated_at).to eq payment.created_at
        end
      end

      context 'when another error' do
        it 'log an error' do
          allow(Rails.logger).to receive(:error)
          allow(Stripe::Charge).to receive(:create).and_raise Stripe::APIError
          described_class.perform_now(payment.id)
          expect(Rails.logger).to have_received(:error)
        end
      end
    end
  end
end
