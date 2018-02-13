Rails.application.routes.draw do
  resources :friend_requests
  get 'friends/index'

  get 'friends/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
      namespace :v1 do
        resources :events
        resources :locations
        resources :users
        resources :invites
      end
    end

   post '/login', to: 'auth#login'
   get '/current_user', to: 'auth#currentUser'
   post '/signup', to: 'auth#signup'

   resources :friends
   resources :friend_requests


end
