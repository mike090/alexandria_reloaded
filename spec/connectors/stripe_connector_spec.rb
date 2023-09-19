# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StripeConnector do
  before { Stripe.api_key ||= ENV.fetch('STRIPE_API_KEY', nil) }

  let(:book) { create(:book, price_cents: 299) }
  let(:payment) { create(:payment, book:) }

  def charge_with_token(payment, card)
    token = Stripe::Token.create(card:)
    payment.update_column :token, token['id']
    StripeConnector.new(payment).send(:create_charge)
  end

  def card(number)
    { number:, exp_month: 6, exp_year: 2028, cvc: '314' }
  end

  context 'with valid card' do
    let(:valid_card) { card('4242424242424242') }

    it 'succeededs' do
      VCR.use_cassette('stripe/valid_card') do
        charge = charge_with_token(payment, valid_card)

        expect(charge['status']).to eq 'succeeded'
        expect(payment.reload.charge_id).to eq charge['id']
        expect(payment.status).to eq 'confirmed'
      end
    end
  end

  context 'with invalid card' do
    let(:invalid_card) { card('4000000000000002') }

    it 'declines the card' do
      VCR.use_cassette('stripe/invalid_card') do
        charge = charge_with_token(payment, invalid_card)

        expect(charge[:error][:code]).to eq 'card_declined'
        expect(payment.reload.error).to eq charge[:error].stringify_keys
        expect(payment.status).to eq 'rejected'
      end
    end
  end
end
