Rails.application.routes.draw do

  root 'pages#home'

  devise_for  :users,
              :controllers => { :registrations => 'users/registrations', :omniauth_callbacks => 'users/omniauth_callbacks'}

  resources :users, only: [:show]
  resources :spaces

  resources :conversations, only: [:create, :destroy]

  resources :conversations do
    resources :messages
  end

  resources :spaces do
    resources :bookings, only: [:create, :destroy]
  end

  get '/preload' => 'bookings#preload'
  get '/preview' => 'bookings#preview'
  get '/search' => 'spaces#search'
  get '/bookings' => 'bookings#index'

end
