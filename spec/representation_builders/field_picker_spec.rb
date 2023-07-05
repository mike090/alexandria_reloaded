# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FieldPicker do
  subject(:field_picker) { described_class.new(presenter) }

  let(:build_attrs) { %i[id title author_id] }
  let(:presenter_class) {	Class.new(BasePresenter).tap { |cls| cls.build_with(*build_attrs) } }
  let(:model) { create(:ruby_on_rails_tutorial) }
  let(:presenter) { presenter_class.new(model, params) }

  describe '#pick' do
    context 'without fields parameter' do
      let(:params) { {} }

      it 'updates presenter data with all build_attributes' do
        expect(field_picker.pick.data).to eq({
                                               'id' => presenter.id,
                                               'title' => presenter.title,
                                               'author_id' => presenter.author_id
                                             })
      end
    end

    context 'with fields parameter' do
      context 'when parameters are valid' do
        let(:params) { { 'fields' => 'id,title' } }

        it 'updates presenter data with allowed attributes' do
          expect(field_picker.pick.data).to eq({
                                                 'id' => presenter.id,
                                                 'title' => presenter.title
                                               })
        end
      end

      context 'when parameters are invalid' do
        let(:params) { { 'fields' => 'id,title,subtitle' } }

        it 'raises a RepresentationBuilderError' do
          expect { field_picker.pick }.to raise_error(RepresentationBuilderError)
        end
      end
    end
  end
end
