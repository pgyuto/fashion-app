Rails.application.routes.draw do
  root to: "pages#index"
  devise_for :users
  resources :pages, only: :index
  resources :items, only: :index
end
