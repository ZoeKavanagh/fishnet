Rails.application.routes.draw do
  devise_for :users

  root 'welcome_page#welcome'
 
  get '/posts' => 'posts#all'
  post '/posts/new' => 'posts#new'
end
