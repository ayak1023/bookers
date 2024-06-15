Rails.application.routes.draw do

  get '/' => 'homes#top'
  get 'books' => 'books#index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  #get 'books/:id/edit' => 'books#edit', as: 'book_list'
  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
