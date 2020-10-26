Rails.application.routes.draw do
  devise_for :users
  resources :uploads
  resources :users
  resources :projects
  resources :translations
  resources :trans
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
