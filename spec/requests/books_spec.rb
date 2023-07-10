# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book do
  include ResourceHelpers

  let(:resource_name) { :book }

  describe 'GET /api/books' do
    let(:resources) do
      [
        create(:ruby_microscope),
        create(:ruby_on_rails_tutorial),
        create(:agile_web_development)
      ]
    end

    include_context 'get resources'
    include_examples 'get resources default behavior'
    include_examples 'fields picking', pick_fields: %i[id title author_id]
    include_examples 'pagination'
    include_examples 'sorting', sort_by: :title
    include_examples 'filtering', attribute: :title, predicate: :eq, value: 'Ruby on Rails Tutorial', expected_count: 1
    include_examples 'embed picking', embed: 'author,publisher'
  end

  describe 'GET /api/books/:id' do
    include_examples 'get resource'
  end

  describe 'POST /api/books' do
    include_examples 'post resource', invalid_attributes: { title: '' }
  end

  describe 'PATCH /api/books/:id' do
    include_examples 'patch resource', valid_attributes: { title: 'Updated!' }, invalid_attributes: { title: '' }
  end

  describe 'DELETE /api/books/:id' do
    include_examples 'delete resource'
  end
end
