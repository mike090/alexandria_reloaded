# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Resource Author' do
  include_context 'headers'

  describe 'GET /api/authors' do
    let(:authors) do
      [
        create(:pat_shaughnessy),
        create(:michael_hartl),
        create(:sam_ruby)
      ]
    end
    let(:query) { query_params.any? ? "?#{query_params.to_param}" : '' }
    let(:query_params) { {} }

    before do
      authors
    end

    context 'without authentication' do
      before { get "#{authors_path}#{query}", headers: }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        get "#{authors_path}#{query}", headers:
      end

      describe 'default behavior' do
        it 'returns all resources' do
          expect(response).to have_http_status :ok
          expect(response_data.count).to eq(Author.count)
          expect(response_data).to all(include(*AuthorPresenter.build_attributes))
        end
      end

      describe 'fields picking' do
        let(:query_params) { fields.any? ? { fields: fields.join(',').to_s } : {} }

        context 'without the fields parameter' do
          let(:fields) { [] }

          it 'returns all fields specified in resource presenter' do
            expect(response).to have_http_status :ok
            expect(response_data.map(&:keys)).to all(eq(AuthorPresenter.build_attributes))
          end
        end

        context 'with valid fields parameter' do
          let(:fields) { %i[id family_name] }

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
        let(:first_page_link) { "<http://www.example.com/api/authors?page=1&per=#{page_size}>; rel=\"first\"" }
        let(:last_page_link) { "<http://www.example.com/api/authors?page=3&per=#{page_size}>; rel=\"last\"" }
        let(:prev_page_link) { "<http://www.example.com/api/authors?page=#{page - 1}&per=#{page_size}>; rel=\"prev\"" }
        let(:next_page_link) { "<http://www.example.com/api/authors?page=#{page + 1}&per=#{page_size}>; rel=\"next\"" }

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
            response_data.map { |author| author['id'] }
          end
          let(:expected) { Author.order(query_params.values.join(' ')).map(&:id) }
          let(:query_params) { { sort: 'family_name', dir: 'desc' } }

          it 'returns a sorted data' do
            expect(response).to have_http_status :ok
            expect(sorted).to eq(expected)
          end
        end

        context 'when invalid column name' do
          let(:query_params) { { sort: 'fake' } }

          it 'returns an error with invalid parameters' do
            expect(response).to have_http_status :unprocessable_entity
            expect(json_body['error']['invalid_params']).to eq('sort=fake')
          end
        end
      end

      describe 'filtering' do
        context 'with valid filtering params' do
          let(:query_params) { { 'q[family_name_eq]' => 'Hartl' } }

          it 'returns filtred data' do
            expect(response).to have_http_status :ok
            expect(response_data.count).to eq(1)
            expect(response_data).to all(include { 'family_name' => 'Hartl' })
          end
        end

        context 'with invalid filtering params' do
          let(:query_params) { { 'q[foo_eq]' => 'Hartl' } }

          it 'returns an error with invalid parameters' do
            expect(response).to have_http_status :unprocessable_entity
            expect(json_body['error']['invalid_params']).to eq 'q[foo_eq]=Hartl'
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

  describe 'GET /api/authors/:id' do
    let(:author) { create(:author) }
    let(:id) { author.id }

    context 'without authentication' do
      before { get "/api/authors/#{id}" }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        get "/api/authors/#{id}", headers:
      end

      context 'when author exists' do
        it 'returns the requested author' do
          expect(response).to have_http_status :ok
          expect(response_data['id']).to eq(id)
          expect(response_data.keys).to eq(AuthorPresenter.build_attributes)
        end
      end

      include_examples 'when resource not exists'
    end
  end

  describe 'POST /api/authors' do
    let(:params) { { data: author_attributes } }
    let(:author_attributes) { attributes_for(:author) }

    context 'without authentication' do
      before { post authors_path, params:, headers: }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        authenticate_user(user:)
        post authors_path, params:, headers:
      end

      context 'when not authorized' do
        let(:user) { :user }

        include_examples 'when not authorized'
      end

      context 'when authorized' do
        let(:user) { :admin }

        context 'with valid parameters' do
          it 'adds a record to db and returns created resource with location' do
            expect(response).to have_http_status :created
            created = Author.find_by(**author_attributes)
            expect(created).not_to be_nil
            expect(response_data['id']).to eq(created.id)
            expect(response_data.keys).to eq(AuthorPresenter.build_attributes)
            expect(response.headers['Location']).to eq(
              "http://www.example.com/api/authors/#{created.id}"
            )
          end
        end

        context 'with invalid parameters' do
          let(:author_attributes) { attributes_for(:author).merge(family_name: '') }

          it 'does not add a record to db, returns HTTP status 422 with error details' do
            expect(response).to have_http_status :unprocessable_entity
            expect(Author.find_by(**author_attributes)).to be_nil
            expect(json_body['error']['invalid_params'].symbolize_keys).to(
              include(:family_name)
            )
          end
        end
      end
    end
  end

  describe 'PATCH /api/authors/:id' do
    let(:author) { create(:author) }
    let(:id) { author.id }
    let(:update_params) { { family_name: 'Updated!' } }

    context 'without authentication' do
      before { patch(author_path(id), params: { data: update_params }, headers:) }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        authenticate_user(user:)
        patch(author_path(id), params: { data: update_params }, headers:)
      end

      context 'when not authorized' do
        let(:user) { :user }

        include_examples 'when not authorized'
      end

      context 'when authorized' do
        let(:user) { :admin }

        context 'with valid parameters' do
          it 'updates db record and returns updated resource' do
            expect(response).to have_http_status :ok
            author.reload
            expect(author.attributes.symbolize_keys).to include(update_params)
            expect(response_data['id']).to eq(id)
            expect(response_data.keys).to eq(AuthorPresenter.build_attributes)
          end
        end

        context 'with invalid parameters' do
          let(:update_params) { { family_name: '' } }

          it 'does not update db record and returns an error with details' do
            expect(response).to have_http_status :unprocessable_entity
            author.reload
            expect(author.attributes.symbolize_keys).not_to include(update_params)
            expect(json_body['error']['invalid_params'].symbolize_keys).to include(:family_name)
          end
        end

        include_examples 'when resource not exists'
      end
    end
  end

  describe 'DELETE /api/authors/:id' do
    let(:author) { create(:author) }
    let(:id) { author.id }

    context 'when not authenticated' do
      before { delete(author_path(id), headers:) }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        authenticate_user(user:)
        delete(author_path(id), headers:)
      end

      context 'when not authorized' do
        let(:user) { :user }

        include_examples 'when not authorized'
      end

      context 'when authorized' do
        let(:user) { :admin }

        context 'when author exists' do
          it 'deletes the record and returns HTTP status 204' do
            expect(response).to have_http_status :no_content
            expect(Author.find_by(id:)).to be_nil
          end
        end

        include_examples 'when resource not exists'
      end
    end
  end
end
