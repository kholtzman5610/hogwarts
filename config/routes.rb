Rails.application.routes.draw do
  get 'home/index'

  resources :cohort
  resources :course
  resources :house
  resources :professor
  resources :student

  root 'home#index'
end