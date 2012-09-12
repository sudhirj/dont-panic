DontPanic::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  match 'home/data' => 'home#data'

  resources :places

  resources :cities

  resources :companies

  resources :countries

  resources :offices

  resources :administrators

  root :to => 'home#index'

end
