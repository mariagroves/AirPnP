Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :toilets do
    resources :bookings, only: [ :new, :create ]
  end

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
end
