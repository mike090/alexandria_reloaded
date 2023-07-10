# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Publisher do
  include ResourceHelpers

  let(:resource_name) { :publisher }

  describe 'GET /api/publishers' do
    let(:resources) do
      [
        create(:o_reilly),
        create(:dev_media),
        create(:super_books)
      ]
    end

    include_context 'get resources'
    include_examples 'get resources default behavior'
    include_examples 'fields picking', pick_fields: %i[name]
    include_examples 'pagination'
    include_examples 'sorting', sort_by: :created_at
    include_examples 'filtering', attribute: :name, predicate: :eq, value: 'Dev Media', expected_count: 1
    include_examples 'embed picking', embed: :books
  end

  describe 'GET /api/publishers/:id' do
    include_examples 'get resource'
  end

  describe 'POST /api/publishers' do
    include_examples 'post resource', invalid_attributes: { name: '' }
  end

  describe 'PATCH /api/publishers/:id' do
    include_examples 'patch resource', valid_attributes: { name: 'Golden book' }, invalid_attributes: { name: '' }
  end

  describe 'DELETE /api/publishers/:id' do
    include_examples 'delete resource'
  end
end
