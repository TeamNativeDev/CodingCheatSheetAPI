# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories, only: %i[index show create]
      resources :tips, only: %i[create]
    end
  end
end
