# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Resource Publisher' do
  let(:headers) { {} }

  describe 'GET /api/publishers' do
    let(:publishers) do
      [
        create(:o_reilly),
        create(:dev_media),
        create(:super_books)
      ]
    end
    let(:query) { query_params.any? ? "?#{query_params.to_param}" : '' }
    let(:query_params) { {} }

    before do
      publishers
      get "/api/publishers#{query}", headers:
    end

    include_examples 'when unauthorized'

    context 'with authentication' do
      include_context 'authenticate client'

      describe 'default behavior' do
        it 'returns all resources' do
          expect(response).to have_http_status :ok
          expect(response_data.count).to eq(Publisher.count)
          expect(response_data).to all(include(*PublisherPresenter.build_attributes))
        end
      end

      describe 'fields picking' do
        let(:query_params) { fields.any? ? { fields: fields.join(',').to_s } : {} }

        context 'without the fields parameter' do
          let(:fields) { [] }

          it 'returns all fields specified in resource presenter' do
            expect(response).to have_http_status :ok
            expect(response_data.map(&:keys)).to all(eq(PublisherPresenter.build_attributes))
          end
        end

        context 'with valid fields parameter' do
          let(:fields) { %i[id name] }

          it 'returns only requested fields' do
            expect(response).to have_http_status :ok
            expect(response_data.map(&:keys)).to all(eq(fields.map(&:to_s)))
          end
        end

        context 'with invalid fields parameter' do
          let(:fields) { %w[foo bar] }

          it 'returns an error with invalid parameters' do
            expect(response).to have_http_status :unprocessable_entity
            expect(json_body['error']['invalid_params']).to eq('fields=foo,bar')
          end
        end
      end

      describe 'pagination' do
        let(:page_size) { 1 }
        let(:query_params) { { page:, per: page_size } }
        let(:first_page_link) { "<http://www.example.com/api/publishers?page=1&per=#{page_size}>; rel=\"first\"" }
        let(:last_page_link) { "<http://www.example.com/api/publishers?page=3&per=#{page_size}>; rel=\"last\"" }
        let(:prev_page_link) { "<http://www.example.com/api/publishers?page=#{page - 1}&per=#{page_size}>; rel=\"prev\"" }
        let(:next_page_link) { "<http://www.example.com/api/publishers?page=#{page + 1}&per=#{page_size}>; rel=\"next\"" }

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
            response_data.map { |publisher| publisher['id'] }
          end
          let(:expected) { Publisher.order(query_params.values.join(' ')).map(&:id) }
          let(:query_params) { { sort: 'name', dir: 'desc' } }

          it 'returns a sorted data' do
            expect(response).to have_http_status :ok
            expect(sorted).to eq(expected)
          end
        end

        context 'with invalid sorting params' do
          let(:query_params) { { sort: 'fake' } }

          it 'returns an error with invalid parameters' do
            expect(response).to have_http_status :unprocessable_entity
            expect(json_body['error']['invalid_params']).to eq('sort=fake')
          end
        end
      end

      describe 'filtering' do
        context 'with valid filtering params' do
          let(:query_params) { { 'q[name_eq]' => 'Dev Media' } }

          it 'returns filtred data' do
            expect(response).to have_http_status :ok
            expect(response_data.count).to eq(1)
            expect(response_data).to all(include { 'name' => 'Dev Media' })
          end
        end

        context 'with invalid filtering params' do
          let(:query_params) { { 'q[foo_eq]' => 'Dev Media' } }

          it 'returns an error with invalid parameters' do
            expect(response).to have_http_status :unprocessable_entity
            expect(json_body['error']['invalid_params']).to eq 'q[foo_eq]=Dev Media'
          end
        end
      end

      describe 'embed picking' do
        context 'with valid "embed" parameter' do
          let(:query_params) { { embed: 'books' } }

          it 'returns the resources with embedded' do
            expect(response).to have_http_status :ok
            expect(response_data).to all(include('books'))
          end
        end

        context 'with invalid "embed" parameter' do
          let(:query_params) { { embed: :fake } }

          it 'returns an error with invalid parameters' do
            expect(response).to have_http_status :unprocessable_entity
            expect(json_body['error']['invalid_params']).to eq 'embed=fake'
          end
        end
      end
    end
  end

  describe 'GET /api/publishers/:id' do
    let(:publisher) { create(:publisher) }
    let(:id) { publisher.id }

    before { get "/api/publishers/#{id}", headers: }

    include_examples 'when unauthorized'

    context 'with authentication' do
      include_context 'authenticate client'

      context 'when publisher exists' do
        it 'returns the requested publisher' do
          expect(response).to have_http_status :ok
          expect(response_data['id']).to eq(id)
          expect(response_data.keys).to eq(PublisherPresenter.build_attributes)
        end
      end

      include_examples 'when resource not exists'
    end
  end

  describe 'POST /api/publishers' do
    let(:params) { { data: publisher_attributes } }
    let(:publisher_attributes) { attributes_for(:publisher) }

    before { post '/api/publishers', params:, headers: }

    include_examples 'when unauthorized'

    context 'with authentication' do
      include_context 'authenticate client'

      context 'with valid parameters' do
        it 'adds a record to db and returns created resource with location' do
          expect(response).to have_http_status :created
          created = Publisher.find_by(**publisher_attributes)
          expect(created).not_to be_nil
          expect(response_data['id']).to eq(created.id)
          expect(response_data.keys).to eq(PublisherPresenter.build_attributes)
          expect(response.headers['Location']).to eq(
            "http://www.example.com/api/publishers/#{created.id}"
          )
        end
      end

      context 'with invalid parameters' do
        let(:publisher_attributes) { attributes_for(:publisher).merge(name: '') }

        it 'does not add a record to db, returns HTTP status 422 with error details' do
          expect(response).to have_http_status :unprocessable_entity
          expect(Publisher.find_by(**publisher_attributes)).to be_nil
          expect(json_body['error']['invalid_params'].symbolize_keys).to(
            include(:name)
          )
        end
      end
    end
  end

  describe 'PATCH /api/publishers/:id' do
    let(:publisher) { create(:publisher) }
    let(:id) { publisher.id }
    let(:update_params) { { name: 'Updated!' } }

    before { patch "/api/publishers/#{id}", params: { data: update_params }, headers: }

    include_examples 'when unauthorized'

    context 'with authentication' do
      include_context 'authenticate client'

      context 'with valid parameters' do
        it 'updates db record and returns updated resource' do
          expect(response).to have_http_status :ok
          publisher.reload
          expect(publisher.attributes.symbolize_keys).to include(update_params)
          expect(response_data['id']).to eq(id)
          expect(response_data.keys).to eq(PublisherPresenter.build_attributes)
        end
      end

      context 'with invalid parameters' do
        let(:update_params) { { name: '' } }

        it 'does not update db record and returns an error with details' do
          expect(response).to have_http_status :unprocessable_entity
          publisher.reload
          expect(publisher.attributes.symbolize_keys).not_to include(update_params)
          expect(json_body['error']['invalid_params'].symbolize_keys).to include(:name)
        end
      end

      include_examples 'when resource not exists'
    end
  end

  describe 'DELETE /api/publishers/:id' do
    let(:publisher) { create(:publisher) }
    let(:id) { publisher.id }

    before { delete "/api/publishers/#{id}", headers: }

    include_examples 'when unauthorized'

    context 'with authentication' do
      include_context 'authenticate client'

      context 'when publisher exists' do
        it 'deletes the record and returns HTTP status 204' do
          expect(response).to have_http_status :no_content
          expect(Publisher.find_by(id:)).to be_nil
        end
      end

      include_examples 'when resource not exists'
    end
  end
end
