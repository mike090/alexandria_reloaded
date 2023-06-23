# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books

  validates :given_name, presence: true, uniqueness: { scope: :family_name }
  validates :family_name, presence: true
end
