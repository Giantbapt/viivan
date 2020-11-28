Rails.application.routes.draw do
  resources :articles, only: [:new,:index, :show]
  resources :galeries, only: [:index, :show]
  # get 'articles/new'
  post 'articles/create'
  # get 'articles/index'
  # get 'articles/show'
  get 'suggestions/new'
  post 'suggestions/create'
  get 'suggestions/show'
  get 'suggestions/index'

  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'galerie', to: 'pages#galerie', as: :galerie
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
