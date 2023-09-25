# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PaymentRetrieveJob do
  before { ActiveJob::Base.queue_adapter = :test }

  describe '#perform' do
    let(:retrieve_casssette_name) { "stripe/charge/retrieve/#{payment.charge_id}" }
    let(:create_casssette_name) { "stripe/charge/create/#{payment.token}" }

    before do
      VCR.use_cassette create_casssette_name do
        charge = Stripe::Charge.create({
                                         amount: payment.price.fractional,
                                         currency: payment.price.currency.to_s,
                                         source: payment.token
                                       })
        payment.charge_id = charge.id
        payment.sent!
      rescue Stripe::CardError => e
        payment.charge_id = e.json_body[:error][:charge]
        payment.sent!
      end
    end

    context 'when charge succeded' do
      let(:payment) { create(:payment, token: 'tok_mastercard') }

      it 'update payment status to confirmed' do
        VCR.use_cassette retrieve_casssette_name do
          described_class.perform_now payment.id
          expect(payment.reload).to be_confirmed
        end
      end
    end

    context 'when charge declined' do
      let(:payment) { create(:payment, token: 'tok_visa_chargeDeclinedInsufficientFunds') }

      it 'updare payment status to rejected' do
        VCR.use_cassette retrieve_casssette_name do
          described_class.perform_now payment.id
          expect(payment.reload).to be_rejected
          expect(payment.error).not_to be_blank
        end
      end
    end
  end
end
