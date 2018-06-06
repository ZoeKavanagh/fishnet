Rails.application.routes.draw do
  resources :user
  
  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
  
  get '/user/new' => 'user#new'
end