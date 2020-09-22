Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bikes
      resources :users, only: %i[index show]
      resources :bookings, only: %i[index show update destroy]
    end
  end

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
  get 'bookings', to: 'bookings#index'
  post 'bookings/new', to: 'bookings#create'
  delete 'bookings', to: 'bookings#destroy'
end
