Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :movie_shops, only: [:index, :show]
end
