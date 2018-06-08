Rails.application.routes.draw do
  resources :user

  root 'welcome_page#welcome'

  get 'welcome_page/welcome'

  get '/user/new' => 'user#new'

  get '/posts' => 'posts#all'
  post '/posts/new' => 'posts#new'
end
