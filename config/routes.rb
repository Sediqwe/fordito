Rails.application.routes.draw do
  resources :uploads
  resources :users
  resources :projects
  resources :translations
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
