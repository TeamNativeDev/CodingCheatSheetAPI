Rails.application.routes.draw do


  namespace :api do 
    namespace :vi do
      resources :categories, only: [:index]
    end
  end


end
