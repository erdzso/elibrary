Elibrary::Application.routes.draw do
  resources :books


  resources :lendings


  resources :balances


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end