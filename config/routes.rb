Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  

  resources :courses do
    resources :cohorts
  end

  resources :cohorts do
    resources :grades
  end
  resources :house
  resources :professors
  resources :students
end