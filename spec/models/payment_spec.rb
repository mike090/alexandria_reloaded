# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Payment do
  subject { described_class.new }

  let(:payment_attrs) { { book: create(:book), user: create(:user) } }
  let(:payment) { build(:payment) }
  # let(:persisted_payment) { create(:payment) }
  # let(:duplicate_payment) { build(:payment, book: persisted_payment.book, user: persisted_payment.user) }

  it { is_expected.to belong_to(:book) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:token) }

  it 'has a valid factories' do
    expect(payment).to be_valid
    expect(build(:payment, :confirmed)).to be_valid
    expect(build(:payment, :sent)).to be_valid
    expect(build(:payment, :rejected)).to be_valid
  end

  it 'a book cannot be sold twice' do
    create(:payment, :confirmed, **payment_attrs)
    new_payment = build(:payment, **payment_attrs)
    expect(new_payment).not_to be_valid
    expect(new_payment.errors.messages[:book]).to include('has already been purchased')
  end

  it 'invalidates a payment when there is another uncompleted payment' do
    payment = create(:payment, **payment_attrs)
    new_payment = build(:payment, **payment_attrs)
    expect(new_payment).not_to be_valid
    expect(new_payment.errors.messages[:book]).to include('has uncompleated payment')
    payment.charge_id = 'ch_000'
    payment.sent!
    expect(new_payment).not_to be_valid
    expect(new_payment.errors.messages[:book]).to include('has uncompleated payment')
  end

  it 'valid when another payments are rejectet' do
    create(:payment, :rejected, **payment_attrs)
    new_payment = build(:payment, **payment_attrs)
    expect(new_payment).to be_valid
    new_payment.charge_id = 'ch_000'
    expect(new_payment.confirmed!).to be_truthy
  end

  it 'adds the price on create' do
    payment.save
    expect(payment.price).to eq(payment.book.price)
  end

  # describe '#confirm!' do
  #   before { persisted_payment.confirm!('123', :succeeded) }

  #   it 'saves the charge_id and status' do
  #     expect(persisted_payment.charge_id).to eq('123')
  #     expect(persisted_payment.status).to eq('succeeded')
  #   end
  # end

  # describe '#error!' do
  #   before { persisted_payment.error!({ 'something' => 'went wrong' }) }

  #   it 'registers an error' do
  #     expect(persisted_payment.error).to eq({ 'something' => 'went wrong' })
  #   end

  #   it 'rejects the payment' do
  #     expect(persisted_payment.status).to eq('rejected')
  #   end
  # end
end
