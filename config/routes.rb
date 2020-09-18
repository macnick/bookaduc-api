Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :bikes
      resources :bookings, only: %i[index show]
    end
  end

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
  get 'bookings', to: 'bookings#index'
  post 'bookings', to: 'bookings#create'
  delete 'bookings', to: 'bookings#destroy'
end
