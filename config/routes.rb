Rails.application.routes.draw do
  get 'calendar/show'
  resource :calendar, only: [:show], controller: :calendar
  
  root to: "calendar#show"
  root to: 'visitors#index'
  devise_for :users
  resources :users
end

