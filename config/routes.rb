Rails.application.routes.draw do
  get '/' => 'main#main', as: 'main'
  get '/blogs/new' => 'main#new', as: 'new'
  post '/blogs' => 'main#create', as: 'blog'
  delete '/blogs/:id' => 'main#destroy', as: 'delete'
  get '/blogs/:id/edit' => 'main#edit', as: 'edit'
  patch '/blogs/:id' => 'main#update', as: 'update'
  get '/blogs/:id' => 'main#show'
end
