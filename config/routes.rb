Rails.application.routes.draw do

  get '/' => 'homes#top'
  root 'homes#top'
  get 'books' => 'books#index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

  resources :books
  #index, new, create, edit, update, show, delete

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
