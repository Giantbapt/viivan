Rails.application.routes.draw do
  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#internal_error"
  resources :articles, only: [:new,:index, :edit, :update, :show]
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
  get 'videos', to: 'pages#videos', as: :videos

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
