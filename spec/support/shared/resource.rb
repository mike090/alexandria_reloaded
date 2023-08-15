# frozen_string_literal: true

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
