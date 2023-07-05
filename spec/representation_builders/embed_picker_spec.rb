# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EmbedPicker do
  let(:ruby_microscope) { create(:ruby_microscope) }
  let(:author) { ruby_microscope.author }

  let(:embed_picker) { described_class.new(presenter) }

  describe '#embed' do
    context 'with books (many-to-one) as the resource' do
      let(:presenter) { BookPresenter.new(ruby_microscope, params) }

      context 'without "embed" parameter' do
        let(:params) { {} }

        it 'returns the data without embeded entity' do
          expect(embed_picker.embed.data).not_to include(:author_)
        end
      end

      context 'with valid "embed" parameter' do
        let(:params) { { 'embed' => 'author' } }

        it 'embeds the "author" data' do
          expect(embed_picker.embed.data).to include(:author)
        end
      end

      context 'with invalid "embed" parameter' do
        let(:params) { { 'embed' => 'something' } }

        it 'raises a "RepresentationBuilderError"' do
          expect { embed_picker.embed }.to raise_error RepresentationBuilderError
        end
      end
    end

    context 'with author as resource (one-to-many)' do
      let(:presenter) { AuthorPresenter.new(author, params) }
      let(:params) { { 'embed' => 'books' } }

      before { ruby_microscope }

      it 'embeds the "books" data' do
        expect(embed_picker.embed.data[:books]).not_to be_nil
        expect(embed_picker.embed.data[:books].size).to eq(presenter.books.size)
      end
    end
  end
end
