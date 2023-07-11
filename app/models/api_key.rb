# frozen_string_literal: true

class ApiKey < ApplicationRecord
  attribute :key, default: -> { SecureRandom.hex }
  attribute :active, default: true

  validates :key, presence: true
  validates :active, presence: true

  scope :activated, -> { where(active: true) }

  def disable
    update_column :active, false
  end

  def key=(_value)
    super SecureRandom.hex unles key?
  end
end
