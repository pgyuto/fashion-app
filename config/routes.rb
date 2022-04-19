Rails.application.routes.draw do
  root to: "pages#index"
  devise_for :users
  resources :pages, only: :index
  resources :items do
    collection do
      get 'search'
    end
    resources :favorite, only: [:create, :destroy]
  end
  resources :moneys, only: [:index, :new, :create, :edit, :update, :destroy]
end
