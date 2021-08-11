Rails.application.routes.draw do
  get '/' => 'main#main', as: 'main'
  get '/blogs/new' => 'main#new', as: 'new'
  post '/blogs' => 'main#create'
  delete '/blogs/:id' => 'main#destroy', as: 'delete'
  get '/blogs/:id' => 'main#show'
end
