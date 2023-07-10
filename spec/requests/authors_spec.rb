# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author do
  include ResourceHelpers

  let(:resource_name) { :author }

  describe 'GET /api/authors' do
    let(:resources) do
      [
        create(:pat_shaughnessy),
        create(:michael_hartl),
        create(:sam_ruby)
      ]
    end

    include_context 'get resources'
    include_examples 'get resources default behavior'
    include_examples 'fields picking', pick_fields: %i[id family_name]
    include_examples 'pagination'
    include_examples 'sorting', sort_by: :family_name
    include_examples 'filtering', attribute: :given_name, predicate: :gt, value: 'N', expected_count: 2
    include_examples 'embed picking', embed: :books
  end

  describe 'GET /api/authors/:id' do
    include_examples 'get resource'
  end

  describe 'POST /api/authors' do
    include_examples 'post resource', invalid_attributes: { given_name: '' }
  end

  describe 'PATCH /api/authors/:id' do
    include_examples 'patch resource', valid_attributes: { given_name: 'Bob' }, invalid_attributes: { given_name: '' }
  end

  describe 'DELETE /api/authors/:id' do
    include_examples 'delete resource'
  end
end
