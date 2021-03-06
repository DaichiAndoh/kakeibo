Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: :create
  
  resources :expenditures, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :incomes, only: [:index, :new, :create, :edit, :update, :destroy]
  
  get 'savings', to: 'savings#index'
end
