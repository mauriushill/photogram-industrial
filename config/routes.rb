Rails.application.routes.draw do
  root "photos#index"


  devise_for :users

  resources :users, only: :show
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
 
end
