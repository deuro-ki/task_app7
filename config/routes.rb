Rails.application.routes.draw do

  root 'main_pages#top'

  get '/signup', to: 'users#new'
  
  resources :users
end
