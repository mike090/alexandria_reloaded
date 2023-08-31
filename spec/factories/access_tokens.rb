# frozen_string_literal: true

FactoryBot.define do
  factory :access_token do
    token_digest { nil }
    accessed_at { '2023-08-24 10:22:02' }
    user
    api_key
  end
end
