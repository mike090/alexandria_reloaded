# frozen_string_literal: true

class Book < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[title subtitle description]

  monetize :price_cents

  belongs_to :publisher, required: false
  belongs_to :author

  validates :title, :released_on, presence: true
  validates :isbn_10, presence: true, uniqueness: true, length: { is: 10 }
  validates :isbn_13, presence: true, uniqueness: true, length: { is: 13 }

  mount_base64_uploader :cover, CoverUploader
end
