Rails.application.routes.draw do
  root 'sessions#index'
  #taking care of login
  post '/users' => 'users#create'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'
  #show page for user
  get '/users/:id' => 'users#show'
  #taking care of post
  get '/posts' => 'posts#index'
  # get '/posts/:id' => 'posts#index'
  get '/posts/:id' => 'posts#show'
  post '/posts' => 'posts#create'
  delete '/posts/:id' => 'posts#destroy'
  #taking likes
  post '/likes' => 'likes#create'
  get '/likes' => 'posts#show'

end
