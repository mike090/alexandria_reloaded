# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BasePresenter do
  subject(:presenter) { described_class.new(model, {}) }

  let(:model) { 'fake' }

  describe '#data' do
    it 'has "data" attribute for key entry and serialization to json' do
      presenter.data[:something] = 'cool'
      expect(presenter.to_json).to eq('{"something":"cool"}')
    end
  end

  describe '.build_with' do
    let(:build_attributes) { %i[id title] }
    let(:model) { spy(title: 'White Fang') }

    before { described_class.build_with(*build_attributes) }

    it 'stores the correct values' do
      expect(described_class.build_attributes).to eq(%w[id title])
    end

    it 'defined read attributes methods' do
      build_attributes.each do |attribute|
        expect(presenter).to respond_to(attribute)
      end
    end

    it 'read attributes value from model' do
      expect(presenter.title).to eq('White Fang')
      expect(model).to have_received(:title)
    end
  end

  describe '.related_to' do
    let(:model) { instance_double(Book) }

    before do
      allow(model).to receive(:author).and_return('Jack London')
      described_class.related_to :author
    end

    it 'stores the correct values' do
      expect(described_class.relations).to eq(%w[author])
    end

    it 'defines read relations methods for instance' do
      expect(presenter.author).to eq('Jack London')
    end
  end

  describe '.sort_by' do
    it 'stores the correct values' do
      described_class.sort_by :id, :title
      expect(described_class.sort_attributes).to eq(%w[id title])
    end
  end

  describe '.filter_by' do
    it 'stores the correct values' do
      described_class.filter_by :title
      expect(described_class.filter_attributes).to eq(%w[title])
    end
  end
end
