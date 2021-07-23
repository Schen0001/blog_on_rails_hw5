Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  root to: 'posts#index'
  # get '/posts/new' => 'posts#new'
  # post '/posts/new' => 'posts#create'




  put '/post/update' => 'posts#update'
  delete '/posts/delete' => 'posts#delete'
end
