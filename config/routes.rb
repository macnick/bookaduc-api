Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :bikes
      resources :bookings, only: %i[create show destroy update]
    end
  end

  post 'signup', to: 'users#create'
end
