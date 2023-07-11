# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApiKey do
  let(:key) { described_class.create }

  it 'is valid on creation' do
    expect(key).to be_valid
  end

  describe '#disable' do
    it 'disables the key' do
      key.disable
      expect(key.reload.active).to be(false)
    end
  end
end
