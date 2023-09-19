# frozen_string_literal: true

FactoryBot.define do
  factory :payment do
    book
    user
    token { '123' }

    trait :created do
      status { :created }
    end

    trait :confirmed do
      status { :confirmed }
    end

    trait :rejected do
      status { :rejected }
    end
  end
end
