Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  
  resources :cohorts
  resources :courses
  resources :house
  resources :professors
  resources :students
end