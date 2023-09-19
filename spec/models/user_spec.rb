# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  it 'has a valid factories' do
    user = build(:user)
    expect(user).to be_valid
    expect(user).not_to be_confirmed
    user = build(:user, :confirmed)
    expect(user).to be_valid
    expect(user).to be_confirmed
    expect(build(:user, :confirmation_redirect_url)).to be_valid
    expect(build(:user, :confirmation_no_redirect_url)).to be_valid
    expect(build(:user, :reset_password)).to be_valid
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_length_of(:family_name).is_at_most(100) }
    it { is_expected.to validate_length_of(:given_name).is_at_most(100) }

    it 'validates absence of confirmation_token when confirmed' do
      subject = build(:user, :confirmed)
      subject.confirmation_token = '123'
      expect(subject).to be_invalid
      expect(subject.errors).to include(:confirmation_token)
    end
  end

  describe 'relations' do
    it { is_expected.to have_many(:payments) }
    it { is_expected.to have_many(:purchases) }
    it { is_expected.to have_many(:bought_books).through(:purchases).source(:book) }
  end

  it 'generates a confirmation token' do
    user = described_class.new
    expect(user.confirmation_token).not_to be_nil
  end

  it 'downcases email' do
    user = described_class.new
    user.email = 'John@example.com'
    expect(user.email).to eq 'john@example.com'
  end

  it 'validates email format' do
    user = build(:user)
    user.email = '@example.com'
    expect(user).not_to be_valid
    expect(user.errors.messages[:email]).to eq(['is invalid'])
  end

  describe 'unique constraints' do
    subject(:user) { create(:user) }

    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end
