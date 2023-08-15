# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api do
    resources :books, except: :put
    resources :authors, except: :put
    resources :publishers, except: :put
    resources :users, except: :put

    resources :user_confirmations, only: %i[show create]
    resources :password_resets, only: %i[show create update]

    get '/search/:text', to: 'search#index'
  end

  root to: 'books#index'
end
