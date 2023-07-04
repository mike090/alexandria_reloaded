# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book do
  let(:ruby_microscope) { create(:ruby_microscope) }
  let(:rails_tutorial) { create(:ruby_on_rails_tutorial) }
  let(:agile_web_dew) { create(:agile_web_development) }

  let(:books) { [ruby_microscope, rails_tutorial, agile_web_dew] }

  describe 'GET /api/books' do
    let(:params) { {} }
    let(:query) { params.any? ? "?#{params.to_param}" : '' }

    before do
      books
      get "/api/books#{query}"
    end

    context 'default behavior' do
      it 'returns HTTP status OK' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns a json with the "data" root key' do
        expect(response_data).not_to be_nil
      end

      it 'returns all 3 books' do
        expect(response_data.size).to eq(books.size)
      end
    end

    describe 'field picking' do
      context 'with the "fields" parameter' do
        let(:params) { { fields: 'id,title,author_id' } }

        it 'returns books with only the requested fields' do
          response_data.each do |book|
            expect(book.keys).to eq(%w[id title author_id])
          end
        end
      end

      context 'without the "fields" parameter' do
        it 'returns books with all the fields specified in the presenter' do
          response_data.each do |book|
            expect(book.keys).to eq(BookPresenter.build_attributes.map(&:to_s))
          end
        end
      end
    end

    describe 'pagination' do
      let(:page_size) { 1 }
      let(:first_page_link) { "<http://www.example.com/api/books?page=1&per=#{page_size}>; rel=\"first\"" }
      let(:last_page_link) { "<http://www.example.com/api/books?page=3&per=#{page_size}>; rel=\"last\"" }
      let(:prev_page_link) { "<http://www.example.com/api/books?page=#{page - 1}&per=#{page_size}>; rel=\"prev\"" }
      let(:next_page_link) { "<http://www.example.com/api/books?page=#{page + 1}&per=#{page_size}>; rel=\"next\"" }

      let(:params) { { page:, per: page_size } }

      context 'when asking for the first page' do
        let(:page) { 1 }
        let(:links) { [next_page_link, last_page_link].join(', ') }

        it 'returns collection with requested size' do
          expect(response).to have_http_status(:ok)
          expect(response_data.size).to eq(page_size)
        end

        it 'returns the "next" and "last" links' do
          expect(response.headers['Links']).to eq(links)
        end
      end

      context 'when asking for the second page' do
        let(:page) { 2 }

        let(:links) { [first_page_link, prev_page_link, next_page_link, last_page_link].join(', ') }

        it 'returns collection with one item' do
          expect(response).to have_http_status(:ok)
          expect(response_data.size).to eq(page_size)
        end

        it 'returns all four navigation links' do
          expect(response.headers['Links']).to eq(links)
        end
      end

      context 'when asking for the last page' do
        let(:page) { 3 }

        let(:links) { [first_page_link, prev_page_link].join(', ') }

        it 'returns collection with one item' do
          expect(response).to have_http_status(:ok)
          expect(response_data.size).to eq(page_size)
        end

        it 'returns only the "first" and "prev" links' do
          expect(response.headers['Links']).to eq(links)
        end
      end

      context "when sending invalid 'page' and 'per' parameters" do
        let(:page) { 'fake' }

        it 'returns HTTP status 422 with error description' do
          expect(response).to have_http_status :unprocessable_entity
          expect(json_body['error']['invalid_params']).to eq('page=fake')
        end
      end
    end

    describe 'sorting' do
      context 'with valid sorting params' do
        let(:sorted) do
          response_data.map { |book| book[sort_by] }
        end
        let(:expected) { described_class.order(params.values.join(' ')).map(&sort_by.to_sym) }

        context 'without dir parameter' do
          let(:sort_by) { 'title' }
          let(:params) { { sort: sort_by } }

          it 'returns a sorted data' do
            expect(response).to have_http_status :ok
            expect(sorted).to eq(expected)
          end
        end

        context 'with dir parameter' do
          let(:sort_by) { 'title' }
          let(:params) { { sort: sort_by, dir: 'desc' } }

          it 'returns a sorted data' do
            expect(response).to have_http_status :ok
            expect(sorted).to eq(expected)
          end
        end
      end

      context 'with invalid sorting params' do
        context 'when invalid column name' do
          let(:params) { { sort: 'fake' } }

          it 'returns an error with invalid parameters' do
            expect(response).to have_http_status :unprocessable_entity
            expect(json_body['error']['invalid_params']).to eq('sort=fake')
          end
        end

        context 'when invalid direction' do
          let(:params) { { sort: 'title', dir: 'fake' } }

          it 'returns an error with invalid parameters' do
            expect(response).to have_http_status :unprocessable_entity
            expect(json_body['error']['invalid_params']).to eq('dir=fake')
          end
        end
      end
    end

    describe 'filtering' do
      context 'with valid filtering param' do
        let(:params) { { q: { title_cont: 'Microscope' } } }

        it 'returns filtred data' do
          expect(response).to have_http_status :ok
          expect(response_data.size).to eq(1)
        end
      end

      context 'with invalid filtering param' do
        let(:params) { { q: { foo_cont: :bar } } }

        it 'returns an error with invalid parameters' do
          expect(response).to have_http_status :unprocessable_entity
          expect(json_body['error']['invalid_params']).to eq('q[foo_cont]=bar')
        end
      end
    end
  end
end
