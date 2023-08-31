# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Resource User' do
  include_context 'headers'

  describe 'GET /api/users' do
    let(:users) { create_list(:user, 2) }
    let(:user) { users.first }
    let(:admin) { create(:admin) }
    let(:query) { query_params.any? ? "?#{query_params.to_param}" : '' }
    let(:query_params) { {} }

    before do
      users
    end

    context 'without authentication' do
      before { get "#{users_path}#{query}", headers: }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        authenticate_user(user:)
        get "#{users_path}#{query}", headers:
      end

      context 'when not authorized' do
        let(:user) { super() }

        include_examples 'when not authorized'
      end

      context 'when authorized' do
        let(:user) { admin }

        describe 'default behavior' do
          it 'returns all resources' do
            expect(response).to have_http_status :ok
            expect(response_data.count).to eq(User.count)
            expect(response_data).to all(include(*UserPresenter.build_attributes))
          end
        end

        describe 'fields picking' do
          let(:query_params) { fields.any? ? { fields: fields.join(',').to_s } : {} }

          context 'without the fields parameter' do
            let(:fields) { [] }

            it 'returns all fields specified in resource presenter' do
              expect(response).to have_http_status :ok
              expect(response_data.map(&:keys)).to all(eq(UserPresenter.build_attributes))
            end
          end

          context 'with valid fields parameter' do
            let(:fields) { %i[id given_name] }

            it 'returns only requested fields' do
              expect(response).to have_http_status :ok
              expect(response_data.map(&:keys)).to all(eq(fields.map(&:to_s)))
            end
          end

          context 'with invalid fields parameter' do
            let(:fields) { %w[foo bar] }

            it 'returns an error with invalid parameters' do
              expect(response).to have_http_status :unprocessable_entity
              expect(json_body['error']['invalid_params']).to eq('fields=foo,bar')
            end
          end
        end
      end
    end
  end

  describe 'GET /api/users/:id' do
    let(:users) { create_list(:user, 2) }
    let(:user) { users.first }
    let(:admin) { create(:admin) }
    let(:resource) { users.second }
    let(:id) { resource.id }

    context 'without authentication' do
      before { get user_path(id), headers: }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        authenticate_user(user:)
        get user_path(id), headers:
      end

      context 'when not authorized' do
        include_examples 'when not authorized'
      end

      context 'when authorized' do
        let(:user) { admin }

        context 'when user exists' do
          it 'returns the requested user' do
            expect(response).to have_http_status :ok
            expect(response_data['id']).to eq(id)
            expect(response_data.keys).to eq(UserPresenter.build_attributes)
          end
        end

        include_examples 'when resource not exists'
      end

      context 'when requested self profile' do
        let(:resource) { user }

        it 'returns the requested user' do
          expect(response).to have_http_status :ok
          expect(response_data['id']).to eq(id)
          expect(response_data.keys).to eq(UserPresenter.build_attributes)
        end
      end
    end
  end

  describe 'POST /api/users' do
    let(:params) { { data: user_attributes } }
    let(:user_attributes) { attributes_for(:user) }
    let(:user) { User.find_by(**user_attributes.except(:password)) }

    context 'without authentication' do
      before { post users_path, params:, headers: }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        post users_path, params:, headers:
      end

      context 'with valid parameters' do
        it 'adds a record to db and returns created resource with location' do
          expect(response).to have_http_status :created
          expect(user).not_to be_nil
          expect(response_data['id']).to eq(user.id)
          expect(response_data.keys).to eq(UserPresenter.build_attributes)
          expect(response.headers['Location']).to eq(
            "http://www.example.com/api/users/#{user.id}"
          )
        end

        it 'sends email confirmation and fix this in user model' do
          perform_enqueued_jobs
          expect(ActionMailer::Base.deliveries.last.subject).to eq('Confirm your Account!')
          expect(user.confirmation_sent_at).not_to be_nil
        end
      end

      context 'with invalid parameters' do
        let(:user_attributes) { attributes_for(:user).merge(email: 'email') }

        it 'does not add a record to db, returns HTTP status 422 with error details' do
          expect(response).to have_http_status :unprocessable_entity
          expect(User.find_by(**user_attributes.except(:password))).to be_nil
          expect(json_body['error']['invalid_params'].symbolize_keys).to(
            include(:email)
          )
        end
      end
    end
  end

  describe 'PATCH /api/users/:id' do
    let(:user) { create(:user) }
    let(:resource) { create(:user) }
    let(:admin) { create(:admin) }
    let(:id) { resource.id }
    let(:update_params) { { given_name: 'Updated!' } }

    context 'without authentication' do
      before { patch user_path(id), params: { data: update_params }, headers: }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        authenticate_user(user:)
        patch user_path(id), params: { data: update_params }, headers:
      end

      context 'when not authorized' do
        include_examples 'when not authorized'
      end

      context 'when authorized' do
        context 'when admin' do
          let(:user) { admin }

          context 'with valid parameters' do
            it 'updates db record and returns updated resource' do
              expect(response).to have_http_status :ok
              resource.reload
              expect(resource.attributes.symbolize_keys).to include(update_params)
              expect(response_data['id']).to eq(id)
              expect(response_data.keys).to eq(UserPresenter.build_attributes)
            end
          end

          context 'with invalid parameters' do
            let(:update_params) { { email: '' } }

            it 'does not update db record and returns an error with details' do
              expect(response).to have_http_status :unprocessable_entity
              user.reload
              expect(user.attributes.symbolize_keys).not_to include(update_params)
              expect(json_body['error']['invalid_params'].symbolize_keys).to include(:email)
            end
          end

          include_examples 'when resource not exists'
        end

        context 'when update self profile' do
          let(:resource) { user }

          context 'with valid parameters' do
            it 'updates db record and returns updated resource' do
              expect(response).to have_http_status :ok
              resource.reload
              expect(resource.attributes.symbolize_keys).to include(update_params)
              expect(response_data['id']).to eq(id)
              expect(response_data.keys).to eq(UserPresenter.build_attributes)
            end
          end

          context 'with invalid parameters' do
            let(:update_params) { { email: '' } }

            it 'does not update db record and returns an error with details' do
              expect(response).to have_http_status :unprocessable_entity
              user.reload
              expect(user.attributes.symbolize_keys).not_to include(update_params)
              expect(json_body['error']['invalid_params'].symbolize_keys).to include(:email)
            end
          end

          include_examples 'when resource not exists'
        end
      end
    end
  end

  describe 'DELETE /api/users/:id' do
    let(:user) { create(:user) }
    let(:resource) { create(:user) }
    let(:admin) { create(:admin) }
    let(:id) { resource.id }

    context 'without authentication' do
      before { delete user_path(id), headers: }

      include_examples 'when not authenticated'
    end

    context 'with authentication' do
      before do
        authenticate_client
        authenticate_user(user:)
        delete user_path(id), headers:
      end

      context 'when not authorized' do
        include_examples 'when not authorized'
      end

      context 'when authorized' do
        context 'when admin' do
          let(:user) { admin }

          context 'when user exists' do
            it 'deletes the record and returns HTTP status 204' do
              expect(response).to have_http_status :no_content
              expect(User.find_by(id:)).to be_nil
            end
          end

          include_examples 'when resource not exists'
        end

        context 'when delete self profile' do
          let(:resource) { user }

          it 'deletes the record and returns HTTP status 204' do
            expect(response).to have_http_status :no_content
            expect(User.find_by(id:)).to be_nil
          end
        end
      end
    end
  end
end
