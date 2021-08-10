Rails.application.routes.draw do
  get '/' => 'main#main', as: 'main'
  get '/blogs/:id' => 'main#show'
end
