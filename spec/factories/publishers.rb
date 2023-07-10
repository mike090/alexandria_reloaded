# frozen_string_literal: true

FactoryBot.define do
  factory :publisher, aliases: [:o_reilly] do
    name { "O'Reilly" }
  end

  factory :dev_media, class: 'Publisher' do
    name { 'Dev Media' }
  end

  factory :super_books, class: 'Publisher' do
    name { 'Super Books' }
  end
end
