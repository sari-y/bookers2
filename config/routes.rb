Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  get 'home/about', to: 'homes#about'
  resources :books, only: [:index, :show, :edit, :create, :destroy]
  resources :users, only: [:index, :show, :edit, :create]
  patch 'books/:id' => 'books#update', as: 'update_book'
  patch 'users/:id' => 'users#update', as: 'update_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
