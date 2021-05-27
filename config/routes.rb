Rails.application.routes.draw do
  get 'home/index'

  resources :cohorts
  resources :courses
  resources :house
  resources :professors
  resources :students

  root 'home#index'
end