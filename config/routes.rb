Rails.application.routes.draw do
  root "photos#index"


  devise_for :users

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos

  get ":username/liked" => "photos#liked", as: :liked_photos
  get ":username/feed" => "photos#feed", as: :feed_photos
  get ":username/followers" => "users#followers", as: :followers_photos
  get ":username/following" => "users#following", as: :following
  
  get ":username" => "users#show", as: :user
end
