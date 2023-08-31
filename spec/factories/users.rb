# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    given_name { Faker::Name.first_name }
    family_name { Faker::Name.last_name }
    role { :user }

    trait :confirmation_redirect_url do
      confirmation_token { '123' }
      confirmation_redirect_url { 'http://google.com' }
    end

    trait :confirmation_no_redirect_url do
      confirmation_token { '123' }
      confirmation_redirect_url { nil }
    end

    trait :confirmed do
      confirmed_at { Time.now.utc }
      confirmation_token { nil }
    end

    trait :reset_password do
      reset_password_token { '123' }
      reset_password_redirect_url { 'http://example.com?some=params' }
      reset_password_sent_at { Time.now }
    end

    trait :reset_password_no_params do
      reset_password_token { '123' }
      reset_password_redirect_url { 'http://example.com' }
      reset_password_sent_at { Time.now }
    end
  end

  factory :admin, class: 'User' do
    email { 'admin@example.com' }
    password { 'password' }
    given_name { 'Bob' }
    family_name { 'Marley' }
    role { :admin }
  end
end
