Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bikes
      resources :users, only: %i[index show]
      resources :bookings, only: %i[index show update destroy create]
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'api/v1/users#create'

end
