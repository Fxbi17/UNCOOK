Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:show]
  resources :dishes, only: [:index, :show] do
    get "add_to_favorite", to: "dishes#add_to_favorite"
    get "remove_from_favorite", to: "dishes#remove_from_favorite"
    resources :reviews, only: [:new, :create]
  end

end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
