Rails.application.routes.draw do
  get 'home/index'

  resources :course
  resources :house
  resources :professor
  resources :student

  root 'home#index'
end