# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Paginator do
  let(:ruby_microscope) { create(:ruby_microscope) }
  let(:rails_tutorial) { create(:ruby_on_rails_tutorial) }
  let(:agile_web_dev) { create(:agile_web_development) }
  let(:books) { [ruby_microscope, rails_tutorial, agile_web_dev] }

  let(:scope) { Book.all }
  let(:page) { '1' }
  let(:page_size) { 2 }
  let(:query_params) { { 'page' => page, 'per' => page_size, 'something' => 'else' } }
  let(:paginator) { described_class.new(scope, query_params) }

  before { books }

  describe '#paginate' do
    let(:paginated) { paginator.paginate }

    it 'returns a collection with required size' do
      expect(paginated.size).to eq(page_size)
    end

    it 'returns the first two items' do
      expect(paginated).to eq(books[0..1])
    end

    context 'when requested page is out of range' do
      let(:page) { 10 }

      it 'returns empty collection' do
        expect(paginated).to be_empty
      end
    end
  end

  describe '#navigation_params' do
    let(:page_size) { 1 }

    context 'when requested page is in the pages range' do
      context 'when the first page' do
        let(:page) { 1 }

        it 'returns "next" and "last" links' do
          expect(paginator.navigation_params).to eq({
                                                      next: { 'page' => 2, 'per' => 1 },
                                                      last: { 'page' => 3, 'per' => 1 }
                                                    })
        end
      end

      context 'when the second page' do
        let(:page) { 2 }

        it 'returns all four params' do
          expect(paginator.navigation_params).to eq({
                                                      first: { 'page' => 1, 'per' => 1 },
                                                      prev: { 'page' => 1, 'per' => 1 },
                                                      next: { 'page' => 3, 'per' => 1 },
                                                      last: { 'page' => 3, 'per' => 1 }
                                                    })
        end
      end

      context 'when the last page' do
        let(:page) { 3 }

        it 'returns only the "first" and "prev" params' do
          expect(paginator.navigation_params).to eq({
                                                      first: { 'page' => 1, 'per' => 1 },
                                                      prev: { 'page' => 2, 'per' => 1 }
                                                    })
        end
      end
    end

    context 'when the requested page is out of range' do
      let(:page) { 10 }

      it 'returns only the "first" and "last" params' do
        expect(paginator.navigation_params).to eq({
                                                    first: { 'page' => 1, 'per' => 1 },
                                                    last: { 'page' => 3, 'per' => 1 }
                                                  })
      end
    end
  end
end
