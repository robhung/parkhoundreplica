Rails.application.routes.draw do

  root 'pages#home'

  devise_for  :users,
              :controllers => { :registrations => 'users/registrations', :omniauth_callbacks => 'users/omniauth_callbacks'}

  resources :users, only: [:show]

  resources :dashboard

  resources :conversations, only: [:create, :destroy]

  resources :conversations do
    resources :messages
  end

  get '/search' => 'spaces#search'

  resources :spaces

  resources :spaces do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :destroy]

  get '/guest_bookings' => 'bookings#show'

  get '/preload' => 'bookings#preload'
  get '/preview' => 'bookings#preview'

  resources :charges

end
