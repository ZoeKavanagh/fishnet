Rails.application.routes.draw do
  resources :posts
  devise_for :users

  root 'welcome_page#welcome'

end
