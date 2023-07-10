# frozen_string_literal: true

FactoryBot.define do
  factory :author, aliases: [:pat_shaughnessy] do
    given_name { 'Pat' }
    family_name { 'Shaughnessy' }
  end

  factory :michael_hartl, class: 'Author' do
    given_name { 'Michael' }
    family_name { 'Hartl' }
  end

  factory :sam_ruby, class: 'Author' do
    given_name { 'Sam' }
    family_name { 'Ruby' }
  end
end
