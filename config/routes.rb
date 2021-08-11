Rails.application.routes.draw do
  get '/' => 'main#main', as: 'main'
  get '/blogs/new' => 'main#new', as: 'new'
  post '/blogs' => 'main#create'
  get '/blogs/:id' => 'main#show'
end
