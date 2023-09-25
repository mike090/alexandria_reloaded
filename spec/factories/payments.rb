# frozen_string_literal: true

FactoryBot.define do
  factory :payment do
    book
    user
    token { '123' }

    trait :created do
      status { :created }
    end

    trait :sent do
      status { :sent }
      charge_id { 'ch_000' }
    end

    trait :confirmed do
      status { :confirmed }
      charge_id { 'ch_000' }
    end

    trait :rejected do
      status { :rejected }
      charge_id { 'ch_000' }
      error { { code: 402 } }
    end
  end
end
