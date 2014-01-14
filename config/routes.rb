Tweeter::Application.routes.draw do

  get '/tweets' => 'tweets#index'
  get '/tweets/new' => 'tweets#new'
  post '/tweets' => 'tweets#create'
  get '/tweets/:id' => 'tweets#show'

end
