Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bikes
      resources :users
      resources :bookings, only: %i[create show destroy update]
    end
  end
end