Rails.application.routes.draw do
  resources :sessions
  resources :races
  resources :character_weapons
  resources :categories
  resources :campaigns
  resources :weapons
  resources :characters
  resources :users
  resources :adventures
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
