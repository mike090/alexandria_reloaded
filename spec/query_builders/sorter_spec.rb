# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Sorter do
  let(:ruby_microscope) { create(:ruby_microscope) }
  let(:rails_tutorial) { create(:ruby_on_rails_tutorial) }
  let(:agile_web_dev) { create(:agile_web_development) }
  let(:books) { [ruby_microscope, rails_tutorial, agile_web_dev] }

  let(:scope) { Book.all }
  let(:sorted) { described_class.new(scope, params).sort }

  describe '#sort' do
    context 'without any parameters' do
      let(:params) { {} }

      it 'returns the unchanged scope' do
        expect(sorted).to eq(scope)
      end
    end

    context 'when the parameters are valid' do
      let(:params) { { 'sort' => 'title', 'dir' => 'desc' } }

      it 'returns sorted scope' do
        expect(sorted.map(&:id)).to eq(scope.order('title desc').map(&:id))
      end
    end

    context 'when parameters are invalid' do
      let(:params) { { 'sort' => 'isbn_10' } }

      it 'rises a QueryBuilderError exception' do
        expect { sorted }.to raise_error QueryBuilderError
      end
    end
  end
end
