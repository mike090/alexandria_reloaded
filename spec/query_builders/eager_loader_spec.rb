# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EagerLoader do
  let(:scope) { Book.all }
  let(:loader) { described_class.new(scope, params) }

  describe '#load' do
    context 'with valid parameters' do
      context 'with the "include" parameter' do
        let(:params) { { 'include' => 'author,publisher' } }

        it 'returns scope with included entities' do
          expect(loader.load.includes_values).to eq %w[author publisher]
        end
      end

      context 'with the "embed" parameter' do
        let(:params) { { 'embed' => 'author' } }

        it 'returns scope with included entities' do
          expect(loader.load.includes_values).to eq(%w[author])
        end
      end
    end

    context 'with invalid parameters' do
      let(:params) { { 'include' => 'fake' } }

      it 'raises a QueryBuilderError exception' do
        expect { loader.load }.to raise_error QueryBuilderError
      end
    end
  end
end
