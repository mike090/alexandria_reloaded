# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BasePresenter do
  subject(:presenter) { described_class.new(model) }

  let(:model) { 'fake' }

  describe '#data' do
    it 'has "data" attribute for key entry and serialization to json' do
      presenter.data[:something] = 'cool'
      expect(presenter.to_json).to eq('{"something":"cool"}')
    end
  end

  describe '.build_with' do
    let(:build_attributes) { %i[id title] }

    before { described_class.build_with(*build_attributes) }

    it 'stores the correct values' do
      expect(described_class.build_attributes).to eq(%w[id title])
    end

    it 'defined read attributes methods' do
      build_attributes.each do |attribute|
        expect(presenter).to respond_to(attribute)
      end
    end
  end

  describe '.related_to' do
    it 'stores the correct values' do
      described_class.related_to :author, :publisher
      expect(described_class.relations).to eq(%w[author publisher])
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

  describe 'read attributes methods' do
    context 'default behavior' do
      subject(:presenter) { Class.new(described_class).tap { |cls| cls.build_with :field }.new(model) }

      context 'when model have the attribute' do
        let(:model) { spy(field: 'Model Value') }

        it 'read attributes from model' do
          expect(presenter.field).to eq('Model Value')
          expect(model).to have_received(:field)
        end
      end

      context "when the model doesn't have attribute" do
        let(:model) { 'fake' }

        it 'raise error' do
          expect { presenter.field }.to raise_error NoMethodError
        end
      end
    end

    context 'when presenter redefine attribute' do
      subject(:presenter) do
        Class.new(described_class).tap do |cls|
          cls.build_with :field
          cls.define_method(:field) { 'Presenter Value' }
        end.new(model)
      end

      it 'returns redifined value' do
        expect(presenter.field).to eq('Presenter Value')
      end
    end
  end
end
