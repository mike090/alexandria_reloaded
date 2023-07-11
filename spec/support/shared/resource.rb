# frozen_string_literal: true

shared_context 'get resources' do
  let(:query) { query_params.any? ? "?#{query_params.to_param}" : '' }

  before do
    resources
    get "/api/#{pluralized_name}#{query}"
  end
end

shared_examples 'get resources default behavior' do
  describe 'default behavior' do
    let(:query_params) { {} }

    it 'returns all resources' do
      expect(response).to have_http_status :ok
      expect(response_data.count).to eq(model.count)
      expect(response_data).to all(include(*presenter.build_attributes))
    end
  end
end

shared_examples 'fields picking' do |pick_fields:|
  describe 'fields picking' do
    let(:query_params) { fields.any? ? { fields: fields.join(',').to_s } : {} }

    context 'without the fields parameter' do
      let(:fields) { [] }

      it 'returns all fields specified in resource presenter' do
        expect(response).to have_http_status :ok
        expect(response_data.map(&:keys)).to all(eq(presenter.build_attributes))
      end
    end

    context 'with valid fields parameter' do
      let(:fields) { pick_fields }

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
end

shared_examples 'pagination' do
  describe 'pagination' do
    let(:page_size) { 1 }
    let(:query_params) { { page:, per: page_size } }
    let(:first_page_link) { "<http://www.example.com/api/#{pluralized_name}?page=1&per=#{page_size}>; rel=\"first\"" }
    let(:last_page_link) { "<http://www.example.com/api/#{pluralized_name}?page=3&per=#{page_size}>; rel=\"last\"" }
    let(:prev_page_link) { "<http://www.example.com/api/#{pluralized_name}?page=#{page - 1}&per=#{page_size}>; rel=\"prev\"" }
    let(:next_page_link) { "<http://www.example.com/api/#{pluralized_name}?page=#{page + 1}&per=#{page_size}>; rel=\"next\"" }

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
end

shared_examples 'sorting' do |sort_by:|
  describe 'sorting' do
    context 'with valid sorting params' do
      let(:sorted) do
        response_data.map { |book| book['id'] }
      end
      let(:expected) { model.order(query_params.values.join(' ')).map(&:id) }

      context 'without dir parameter' do
        let(:query_params) { { sort: sort_by } }

        it 'returns a sorted data' do
          expect(response).to have_http_status :ok
          expect(sorted).to eq(expected)
        end
      end

      context 'with dir parameter' do
        let(:query_params) { { sort: sort_by, dir: 'desc' } }

        it 'returns a sorted data' do
          expect(response).to have_http_status :ok
          expect(sorted).to eq(expected)
        end
      end
    end

    context 'with invalid sorting params' do
      context 'when invalid column name' do
        let(:query_params) { { sort: 'fake' } }

        it 'returns an error with invalid parameters' do
          expect(response).to have_http_status :unprocessable_entity
          expect(json_body['error']['invalid_params']).to eq('sort=fake')
        end
      end

      context 'when invalid direction' do
        let(:query_params) { { sort: sort_by, dir: 'fake' } }

        it 'returns an error with invalid parameters' do
          expect(response).to have_http_status :unprocessable_entity
          expect(json_body['error']['invalid_params']).to eq('dir=fake')
        end
      end
    end
  end
end

shared_examples 'filtering' do |attribute:, predicate:, value:, expected_count:|
  describe 'filtering' do
    let(:query_params) { { "q[#{attribute}_#{predicate}]" => value } }

    context 'with valid filtering params' do
      let(:query_params) { { "q[#{attribute}_#{predicate}]" => value } }

      it 'returns filtred data' do
        expect(response).to have_http_status :ok
        expect(response_data.count).to eq(expected_count)
        expect(response_data).to all(include { attribute.to_s => value })
      end
    end

    context 'with invalid filtering params' do
      context 'when invalid field name' do
        let(:query_params) { { "q[foo_#{predicate}]" => value } }

        it 'returns an error with invalid parameters' do
          expect(response).to have_http_status :unprocessable_entity
          expect(json_body['error']['invalid_params']).to eq "q[foo_#{predicate}]=#{value}"
        end
      end

      context 'when invalid predicate' do
        let(:query_params) { { "q[#{attribute}_less]" => value } }

        it 'returns an error with invalid parameters' do
          expect(response).to have_http_status :unprocessable_entity
          expect(json_body['error']['invalid_params']).to eq "q[#{attribute}_less]=#{value}"
        end
      end
    end
  end
end

shared_examples 'embed picking' do |embed:|
  describe 'embed picking' do
    context 'with valid "embed" parameter' do
      let(:query_params) { { embed: } }

      it 'returns the resources with embedded' do
        expect(response).to have_http_status :ok
        expect(response_data).to all(include(*embed.to_s.split(',')))
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

shared_examples 'get resource' do
  context 'when resource exists' do
    it 'returns the requested resource' do
      expect(response).to have_http_status :ok
      expect(response_data['id']).to eq(id)
      expect(response_data.keys).to eq(presenter.build_attributes)
    end
  end

  context 'when resource not exists' do
    let(:id) { -1 }

    it 'returns HTTP status 404' do
      expect(response).to have_http_status :not_found
    end
  end
end

shared_examples 'post resource' do |invalid_attributes:|
  let(:belongs_keys) do
    reflections = model.reflect_on_all_associations(:belongs_to).reject do |reflection|
      reflection.options[:optional]
    end
    reflections.to_h { |reflection| ["#{reflection.name}_id".to_sym, create(reflection.name).id] }
  end
  let(:resource_params) { attributes_for(resource_name).merge(belongs_keys) }

  before { post "/api/#{pluralized_name}", params: { data: resource_params } }

  context 'with valid parameters' do
    it 'adds a record to db and returns created resource with location' do
      expect(response).to have_http_status :created
      created = model.find_by(**resource_params)
      expect(created).not_to be_nil
      expect(response_data['id']).to eq(created.id)
      expect(response_data.keys).to eq(presenter.build_attributes)
      expect(response.headers['Location']).to eq(
        "http://www.example.com/api/#{pluralized_name}/#{created.id}"
      )
    end
  end

  context 'with invalid parameters' do
    let(:resource_params) { attributes_for(resource_name).merge(belongs_keys).merge(invalid_attributes) }

    it 'does not add a record to db, returns HTTP status 422 with error details' do
      expect(response).to have_http_status :unprocessable_entity
      expect(model.find_by(**resource_params)).to be_nil
      expect(json_body['error']['invalid_params'].symbolize_keys).to(
        include(*invalid_attributes.keys)
      )
    end
  end
end

shared_examples 'patch resource' do |valid_attributes:, invalid_attributes:|
  let(:resource) { create(resource_name) }
  let(:resource_id) { resource.id }
  let(:resource_params) { valid_attributes }

  before { patch "/api/#{pluralized_name}/#{resource_id}", params: { data: resource_params } }

  context 'with valid parameters' do
    it 'updates db record and returns updated resource' do
      expect(response).to have_http_status :ok
      resource.reload
      expect(resource.attributes.symbolize_keys).to include(resource_params)
      expect(response_data['id']).to eq(resource.id)
      expect(response_data.keys).to eq(presenter.build_attributes)
    end
  end

  context 'with invalid parameters' do
    let(:resource_params) { invalid_attributes }

    it 'does not update db record and returns an error with details' do
      expect(response).to have_http_status :unprocessable_entity
      resource.reload
      expect(json_body['error']['invalid_params'].symbolize_keys).to include(*invalid_attributes.keys)
    end
  end

  context 'when resource not exists' do
    let(:resource_id) { -1 }

    it 'returns HTTP status 404' do
      expect(response).to have_http_status :not_found
    end
  end
end

shared_examples 'delete resource' do
  let(:resource) { create(resource_name) }

  before { delete "/api/#{pluralized_name}/#{resource_id}" }

  context 'with existing resource' do
    let(:resource_id) { resource.id }

    it 'deletes the record and returns HTTP status 204' do
      expect(response).to have_http_status :no_content
      expect(model.find_by(id: resource.id)).to be_nil
    end
  end

  context 'with nonexisting resource' do
    let(:resource_id) { -1 }

    it 'returns HTTP status 404' do
      resource
      expect(response).to have_http_status :not_found
      expect(model.find_by(id: resource.id)).not_to be_nil
    end
  end
end

shared_examples 'when unauthorized' do
  context 'without authentication' do
    it 'returns HTTP status 401 Unauthorized' do
      expect(response).to have_http_status :unauthorized
    end
  end
end

shared_examples 'when resource not exists' do
  context 'when resource not exists' do
    let(:id) { -1 }

    it 'returns HTTP status 404' do
      expect(response).to have_http_status :not_found
    end
  end
end
