Rails.application.routes.draw do
  resources :loan_books, only: [:index, :new, :create, :update]
  resources :books
  resources :users
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
end
