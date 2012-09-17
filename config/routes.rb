DontPanic::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :places

  resources :cities

  resources :companies

  resources :countries

  resources :offices

  resources :administrators

  resources :data

  match "/tree" => "home#tree"

  root :to => 'home#index'

end
