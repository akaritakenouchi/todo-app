Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] 
  resources :messages
  resources :rooms
  resources :books
  resources :todo_lists do
    resources :todo_items
  end
  namespace :todo_list do
    resources :todo_items
  end

  root 'todo_lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
