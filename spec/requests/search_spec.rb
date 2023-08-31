# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Search' do
  include_context 'headers'

  let(:ruby_microscope) { create(:ruby_microscope) }
  let(:rails_tutorial) { create(:ruby_on_rails_tutorial) }
  let(:agile_web_dev) { create(:agile_web_development) }
  let(:books) { [ruby_microscope, rails_tutorial, agile_web_dev] }

  describe 'GET /api/search/:text' do
    before { books }

    context 'without authentication' do
      before { get '/api/search/ruby', headers: }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        get '/api/search/ruby', headers:
      end

      context 'with text = ruby' do
        it 'returns the correct search result' do
          expect(response).to have_http_status :ok
          expect(response_data[0]['searchable_id']).to eq ruby_microscope.id
          expect(response_data[0]['searchable_type']).to eq('Book')
          expect(response_data[1]['searchable_id']).to eq rails_tutorial.id
          expect(response_data[1]['searchable_type']).to eq('Book')
          expect(response_data[2]['searchable_id']).to eq(agile_web_dev.author_id)
          expect(response_data[2]['searchable_type']).to eq('Author')
        end
      end
    end
  end
end
