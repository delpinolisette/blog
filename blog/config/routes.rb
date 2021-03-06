Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home' 
  get '/posts', to: 'posts#index' #displays a list of all posts
  get '/posts/new', to: 'posts#new' #return an html form for creating new post
  post '/posts', to: 'posts#create'
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/posts/:id/edit', to: 'posts#edit'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
end
