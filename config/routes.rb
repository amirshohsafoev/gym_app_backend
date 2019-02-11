Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy, :show]
      get '/current_user', to: 'auth#get_user'
      post '/login', to: 'auth#create'
      resources :user_exercises, only: [:index, :create, :update, :destroy]
      resources :exercises, only: [:index]
      resources :part_of_the_bodies, only: [:index]
      resources :days_body, only: [:index, :create, :update, :destroy]
      resources :days, only: [:index, :create, :update, :destroy]
      resources :schedules, only: [:index, :create, :update, :destroy]
    end
  end
end
