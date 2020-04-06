Rails.application.routes.draw do
  root 'home#top'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resource :post_comments, only: [:create]
  end
  get 'home/about', to: 'home#about'
  post   '/favorite/:book_id' => 'favorites#favorite',   as: 'favorite'
  delete '/favorite/:book_id' => 'favorites#unfavorite', as: 'unfavorite'

end