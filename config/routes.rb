Rails.application.routes.draw do
  # get 'movie_sets/index'
  # get 'movie_sets/show'
  devise_for :users
  root to: 'pages#home'
  resources :movie_sets, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'
end
