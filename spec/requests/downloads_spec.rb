# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'DownloadRequests' do
  include_context 'headers'

  describe 'GET /api/books/:book_id/download' do
    let(:user) { create(:user) }
    let(:admin) { create(:admin) }
    let(:book) { create(:book, download_url: 'download.url') }

    context 'when not authenticated' do
      before do
        get book_download_path(book), headers:
      end

      include_examples 'when not authenticated'
    end

    context 'when authenticated' do
      before { authenticate_client }

      context 'when regular user' do
        let(:id) { book.id }

        before do
          authenticate_user
          get book_download_path(id), headers:
        end

        include_examples 'when resource not exists'

        context 'when not authorized' do
          include_examples 'when not authorized'
        end

        context 'when authorized' do
          let(:book) do
            create(:payment, :confirmed, book: create(:book, download_url: 'some.url'), user:).book
          end

          it 'returns download link in header "Location"' do
            expect(response).to have_http_status :no_content
            expect(response.headers['Location']).to eq book.download_url
          end
        end
      end
    end
  end
end
