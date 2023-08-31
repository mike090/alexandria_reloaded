# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PurchasesRequests' do
  include_context 'headers'
  before { Stripe.api_key ||= ENV.fetch('STRIPE_API_KEY', nil) }

  let(:purchases) { [user_purchase, admin_purchase] }
  let(:book) { create(:book, price_cents: 299) }
  let(:admin_purchase) { create(:purchase, book:, user: admin) }
  let(:user_purchase) { create(:purchase, book:, user:) }
  let(:user) { create(:user) }
  let(:admin) { create(:admin) }

  # describe 'GET /api/purchases' do

  #   let(:query) { query_params.any? ? "?#{query_params.to_param}" : '' }
  #   let(:query_params) { {} }

  # 	before { purchases }

  #   context 'without auntification' do
  #   	context 'when client not autenticated' do
  #   		before do
  #   			headers['HTTP_AUTHERIZATION'] << 'Alexandria-Token'
  #   			get purchases_path, headers:
  #   		end

  #   		include_examples 'when not authenticated'
  #   	end

  #   	context 'when user not authenticated' do
  #   		before do
  #   			authenticate_client
  #   			get purchases_path, headers:
  #   		end

  #   		include_examples 'when not authenticated'
  #   	end
  #   end

  #   context 'with authentcation' do
  #   	describe 'default behavior' do
  #   		context 'when regular user' do
  #   			before do
  #   			  authenticate_client
  #   			  authenticate_user
  #   			  get purchases_path, headers:
  #   			end

  #   			it 'returns users purchases' do
  #   				expect(response).to have_http_status :ok
  #   				expect(response_data.count).to eq(Purchase.where(user:).count)
  #   				expect(response_data).to all(include('user_id' => user.id))
  #   				expect(response_data).to all(include *PurchasePresenter.build_attributes)
  #   			end
  #   		end

  #   		context 'when admin' do
  #   			before do
  #   			  authenticate_client
  #   			  authenticate_user user: admin
  #   			  get purchases_path, headers:
  #   			end

  #   			it 'returns all purchases' do
  #   				expect(response).to have_http_status :ok
  #   				expect(response_data.count).to eq Purchase.count
  #   				expect(response_data).to all(include *PurchasePresenter.build_attributes)
  #   			end
  #   		end
  #     end

  #     describe 'fields picking' do
  #       let(:query_params) { fields.any? ? { fields: fields.join(',').to_s } : {} }

  #       before do
  #       	authenticate_client
  #       	authenticate_user(user:)
  #       	get "#{purchases_path}#{query}", headers:
  #       end

  #       context 'without the fields parameter' do
  #         let(:fields) { [] }

  #         it 'returns all fields specified in resource presenter' do
  #           expect(response).to have_http_status :ok
  #           expect(response_data.map(&:keys)).to all(eq(PurchasePresenter.build_attributes))
  #         end
  #       end

  #       context 'with valid fields parameter' do
  #         let(:fields) { %i[id idempotency_key] }

  #         it 'returns only requested fields' do
  #           expect(response).to have_http_status :ok
  #           expect(response_data.map(&:keys)).to all(eq(fields.map(&:to_s)))
  #         end
  #       end

  #       context 'with invalid fields parameter' do
  #         let(:fields) { %w[foo bar] }

  #         it 'returns an error with invalid parameters' do
  #           expect(response).to have_http_status :unprocessable_entity
  #           expect(json_body['error']['invalid_params']).to eq('fields=foo,bar')
  #         end
  #       end
  #     end

  #     describe 'sorting' do
  #       before do
  #       	authenticate_client
  #       	authenticate_user(user: admin)
  #       	get "#{purchases_path}#{query}", headers:
  #       end

  #       context 'with valid sorting params' do
  #         let(:sorted) do
  #           response_data.map { |purchase| purchase['id'] }
  #         end
  #         let(:expected) { Purchase.order(query_params.values.join(' ')).map(&:id) }
  #         let(:query_params) { { sort: 'user_id', dir: 'desc' } }

  #         it 'returns a sorted data' do
  #           expect(response).to have_http_status :ok
  #           expect(sorted).to eq(expected)
  #         end
  #       end

  #       context 'when invalid column name' do
  #         let(:query_params) { { sort: 'fake' } }

  #         it 'returns an error with invalid parameters' do
  #           expect(response).to have_http_status :unprocessable_entity
  #           expect(json_body['error']['invalid_params']).to eq('sort=fake')
  #         end
  #       end
  #     end

  #     describe 'filtering' do
  #     	before do
  #     	  authenticate_client
  #     	  authenticate_user user: admin
  #     	  get "#{purchases_path}#{query}", headers:
  #     	end

  #       context 'with valid filtering params' do
  #         let(:query_params) { { 'q[user_id_eq]' => user.id } }

  #         it 'returns filtred data' do
  #           expect(response).to have_http_status :ok
  #           expect(response_data.count).to eq(1)
  #           expect(response_data).to all(include 'user_id' => user.id )
  #         end
  #       end

  #       context 'with invalid filtering params' do
  #         let(:query_params) { { 'q[foo_eq]' => 'Hartl' } }

  #         it 'returns an error with invalid parameters' do
  #           expect(response).to have_http_status :unprocessable_entity
  #           expect(json_body['error']['invalid_params']).to eq 'q[foo_eq]=Hartl'
  #         end
  #       end
  #     end

  #     describe 'embed picking' do
  #     	before do
  #     	  authenticate_client
  #     	  authenticate_user user: admin
  #     	  get "#{purchases_path}#{query}", headers:
  #     	end

  #       context 'with valid "embed" parameter' do
  #         let(:query_params) { { embed: 'book' } }

  #         it 'returns the resources with embedded' do
  #           expect(response).to have_http_status :ok
  #           expect(response_data).to all(include('book'))
  #         end
  #       end

  #       context 'with invalid "embed" parameter' do
  #         let(:query_params) { { embed: :fake } }

  #         it 'returns an error with invalid parameters' do
  #           expect(response).to have_http_status :unprocessable_entity
  #           expect(json_body['error']['invalid_params']).to eq 'embed=fake'
  #         end
  #       end
  #     end
  #   end
  # end

  describe 'GET /api/purchases/:id' do
    context 'without auntification' do
      before do
        authenticate_client
        get purchase_path(user_purchase)
      end

      include_examples 'when not authenticated'
    end

    context 'with authentcation' do
      before do
        authenticate_client
        authenticate_user(user:)
        get purchase_path(id), headers:
      end

      context 'when purchase exists' do
        let(:id) { user_purchase.id }

        it 'returns the requested purchase' do
          expect(response).to have_http_status :ok
          expect(response_data['id']).to eq(id)
          expect(response_data.keys).to eq(PurchasePresenter.build_attributes)
        end
      end

      include_examples 'when resource not exists'
    end
  end

  describe 'POST /api/purchases' do
    let(:params) { { data: purchase_attributes } }
    let(:purchase_attributes) { attributes_for(:purchase, book_id: book.id, token:) }
    let(:token) { Stripe::Token.create(card:)['id'] }
    let(:card) do
      {
        number: '4242424242424242', exp_month: 6, exp_year: 2028, cvc: '314'
      }
    end

    context 'without authentication' do
      before do
        VCR.use_cassette('/api/purchases/valid_params') do
          post purchases_path, params:, headers:
        end
      end

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        authenticate_user(user:)
      end

      context 'with valid parameters' do
        it 'adds a record to db and returns created resource with location' do
          VCR.use_cassette('/api/purchases/valid_params') do
            post purchases_path, params:, headers:
          end
          expect(response).to have_http_status :created
          created = Purchase.find_by(idempotency_key: response_data['idempotency_key'])
          expect(created).not_to be_nil
          expect(response_data['id']).to eq(created.id)
          expect(response_data.keys).to eq(PurchasePresenter.build_attributes)
          expect(response.headers['Location']).to eq(
            "http://www.example.com/api/purchases/#{created.id}"
          )
        end
      end

      context 'with invalid parameters' do
        let(:purchase_attributes) { { book_id: book.id, token: '' } }

        it 'does not add a record to db, returns HTTP status 422 with error details' do
          post(purchases_path, params:, headers:)
          expect(response).to have_http_status :unprocessable_entity
          expect(Purchase.find_by(book_id: book.id)).to be_nil
          expect(json_body['error']['invalid_params'].symbolize_keys).to(
            include(token: ["can't be blank"])
          )
        end
      end
    end
  end
end
