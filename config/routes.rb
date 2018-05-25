Rails.application.routes.draw do

  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :articles, only: [:index, :new, :create, :destroy, :edit, :show]
  root "articles#index"
  resources :articles do
    resources :comments
  end

  namespace :admin do
    root to: 'dashboard#index'
    resources :articles
  end

  resources :resumes
  resources :tutorials
  resources :products
  resources :pages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :resumes, only: [:index, :new, :create, :destroy]
  root "resumes#index"


end
