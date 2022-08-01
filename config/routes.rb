Rails.application.routes.draw do
  resources :calendar_trackings
  resources :calendars
  resources :products
  devise_for :users
  resources :rols
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
