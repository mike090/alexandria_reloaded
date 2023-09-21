# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Payment do
  subject { described_class.new }

  let(:payment) { build(:payment) }
  let(:persisted_payment) { create(:payment) }
  let(:duplicate_payment) { build(:payment, book: persisted_payment.book, user: persisted_payment.user) }

  it { is_expected.to belong_to(:book) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:token) }

  it 'has a valid factories' do
    expect(payment).to be_valid
    expect(build(:payment, :confirmed)).to be_valid
    expect(build(:payment, :rejected)).to be_valid
  end

  it 'a book cannot be sold twice' do
    persisted_payment.confirmed!
    expect(duplicate_payment).not_to be_valid
    expect(duplicate_payment.errors.messages[:book]).to include('has already been purchased')
  end

  it 'invalidates a payment when there is another uncompleted payment' do
    expect(duplicate_payment).not_to be_valid
    expect(duplicate_payment.errors.messages[:book]).to include('has uncompleated payment')
  end

  it 'valid when another payments are rejectet' do
    persisted_payment.rejected!
    expect(duplicate_payment).to be_valid
    expect(duplicate_payment.confirmed!).to be_truthy
  end

  it 'generates an idempotency key on create' do
    time_now = Time.parse('Apr 28 2016')
    allow(Time).to receive(:now).and_return(time_now)

    payment.save
    expect(payment.idempotency_key).to eq(
      "#{time_now}/#{payment.user_id}/#{payment.book_id}"
    )
  end

  it 'adds the price on create' do
    payment.save
    expect(payment.price).to eq(payment.book.price)
  end

  describe '#confirm!' do
    before { persisted_payment.confirm!('123') }

    it 'saves the charge_id' do
      expect(persisted_payment.charge_id).to eq('123')
    end

    it 'confirms the payment' do
      expect(persisted_payment.status).to eq('confirmed')
    end
  end

  describe '#error!' do
    before { persisted_payment.error!({ 'something' => 'went wrong' }) }

    it 'registers an error' do
      expect(persisted_payment.error).to eq({ 'something' => 'went wrong' })
    end

    it 'rejects the payment' do
      expect(persisted_payment.status).to eq('rejected')
    end
  end
end
