Rails.application.routes.draw do

root 'pages#home'

get 'register' => 'users#new'
  # post 'register' => 'users#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  resources :donations
  resources :distributions

  get 'pages/about'
  get 'pages/help'

  # get 'pages/home'

  # get 'users/new'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'

  # get 'donations/new'
  # get 'donations/edit'
  # get 'donations/show'
  # get 'donations/index'

  # get 'distributions/new'
  # get 'distributions/edit'
  # get 'distributions/show'
  # get 'distributions/index'

  # get 'sessions/new'
  # get 'sessions/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
