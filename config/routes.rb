Rails.application.routes.draw do
  get 'home/index'

  resources :house
  resources :professor
  resources :student

  root 'home#index'
end