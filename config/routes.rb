Rails.application.routes.draw do
  devise_for :users
  resources :user

  root 'welcome_page#welcome'
  get 'welcome_page/welcome'


  # get '/user/new' => 'user#new'
end
