Rails.application.routes.draw do
  # get 'movie_sets/index'
  # get 'movie_sets/show'
  devise_for :users
  root to: 'pages#home'
  resources :movie_sets, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
