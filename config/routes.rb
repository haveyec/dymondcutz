Rails.application.routes.draw do
  devise_for :users
  resources :topics
  resources :categories
  resources :pages
  resources :posts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
