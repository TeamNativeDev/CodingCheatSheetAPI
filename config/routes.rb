# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories, only: %i[index show create]
      resources :tips, only: %i[create edit update]
      post '/sign_up' => 'sessions#sign_up'
      post '/login' => 'sessions#login'
    end
  end
end
