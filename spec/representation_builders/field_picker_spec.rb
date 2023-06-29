# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FieldPicker do
  subject(:field_picker) { described_class.new(presenter, fields) }

  let(:build_attrs) { %i[id title author_id] }
  let(:presenter_class) {	Class.new(BasePresenter).tap { |cls| cls.build_with(*build_attrs) } }
  let(:model) { create(:ruby_on_rails_tutorial) }
  let(:presenter) { presenter_class.new(model, {}) }

  describe '#pick' do
    context 'without fields parameter' do
      let(:fields) { '' }

      it 'updates presenter data with all build_attributes' do
        expect(field_picker.pick.data).to eq({
                                               'id' => model.id,
                                               'title' => model.title,
                                               'author_id' => model.author_id
                                             })
      end
    end

    context 'with fields parameter' do
      let(:fields) { 'id,title,subtitle' }

      it 'updates presenter data with allowed attributes' do
        expect(field_picker.pick.data).to eq({
                                               'id' => model.id,
                                               'title' => model.title
                                             })
      end
    end
  end
end
