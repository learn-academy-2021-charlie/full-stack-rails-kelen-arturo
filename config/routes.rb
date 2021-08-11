Rails.application.routes.draw do
  get '/' => 'blogs#main', as: 'blogs'
  get '/blogs/new' => 'blogs#new', as: 'new_blog'
  post '/blogs' => 'blogs#create', as: 'create_blog'
  delete '/blogs:id' => 'blogs#destroy', as: 'delete_blog'
  get '/blogs/:id/edit' => 'blogs#edit', as: 'edit_blog'
  patch '/blogs/:id' => 'blogs#update'
  get '/blogs/:id' => 'blogs#show'
  # resources :blogs, only: [:index, :show, :edit, :new, :create, :update, :destroy]
  root 'blogs#index'
end
