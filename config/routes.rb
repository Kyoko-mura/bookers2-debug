Rails.application.routes.draw do
  root 'home#top'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  get 'home/about', to: 'home#about'

end