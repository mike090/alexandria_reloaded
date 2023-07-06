# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PageNavigationService do
  describe '#navigation' do
    subject(:service) { described_class.new(scope) }

    let(:ruby_microscope) { create(:ruby_microscope) }
    let(:rails_tutorial) { create(:ruby_on_rails_tutorial) }
    let(:agile_web_dev) { create(:agile_web_development) }
    let(:books) { [ruby_microscope, rails_tutorial, agile_web_dev] }

    before { books }

    context 'when scope paginated' do
      let(:scope) { Book.all.page(page).per(1) }

      context '& requested page in pages range' do
        context '& requested the 1st page' do
          let(:page) { 1 }

          it 'returns the "next" and "last" params' do
            expect(service.navigation).to eq(
              {
                next: { 'page' => 2, 'per' => 1 },
                last: { 'page' => 3, 'per' => 1 }
              }
            )
          end
        end

        context '& requested the 2nd page' do
          let(:page) { 2 }

          it 'returns all returns all four params' do
            expect(service.navigation).to eq(
              {
                first: { 'page' => 1, 'per' => 1 },
                prev: { 'page' => 1, 'per' => 1 },
                next: { 'page' => 3, 'per' => 1 },
                last: { 'page' => 3, 'per' => 1 }
              }
            )
          end
        end

        context '& requested the last page' do
          let(:page) { 3 }

          it 'returns only the "first" and "prev" params' do
            expect(service.navigation).to eq(
              {
                first: { 'page' => 1, 'per' => 1 },
                prev: { 'page' => 2, 'per' => 1 }
              }
            )
          end
        end
      end

      context '& requested page out of pages range' do
        let(:page) { 100 }

        it 'returns only the "first" and "last" params' do
          expect(service.navigation).to eq(
            {
              first: { 'page' => 1, 'per' => 1 },
              last: { 'page' => 3, 'per' => 1 }
            }
          )
        end
      end

      context 'when scope is empty' do
        let(:scope) { Book.where(id: -1).page(1) }

        it 'returns empty hash' do
          expect(service.navigation).to eq({})
        end
      end
    end

    context 'when scope not paginated' do
      let(:scope) { Book.all }

      it 'returns empty hash' do
        expect(service.navigation).to eq({})
      end
    end
  end
end
