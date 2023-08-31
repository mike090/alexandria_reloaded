# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api do
    resources :books, except: :put
    resources :authors, except: :put
    resources :publishers, except: :put
    resources :users, except: :put

    resources :user_confirmations, only: %i[show create]
    resources :password_resets, only: %i[show create update]
    resources :access_tokens, only: :create do
      delete '/', action: :destroy, on: :collection
    end
    resources :purchases, only: %i[index show create]

    get '/search/:text', to: 'search#index'
  end

  root to: 'books#index'
end
