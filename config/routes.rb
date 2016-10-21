Rails.application.routes.draw do

  root 'pages#home'

  devise_for  :users,
              :controllers => { :registrations => 'users/registrations', :omniauth_callbacks => 'users/omniauth_callbacks'}

  resources :spaces

  resources :conversations do
    resources :messages
  end

  resources :spaces do
    resources :bookings, only: [:create]
  end

  get '/preload' => 'bookings#preload'
  get '/preview' => 'bookings#preview'

end
