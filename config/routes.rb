Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'trips#index'

  resources :drivers
  resources :passengers do
    resources :trips, only: [:index, :new]
  end
  
  resources :trips
end
