Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  devise_for :users

  root 'welcome_page#welcome'

end
