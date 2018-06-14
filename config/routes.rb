Rails.application.routes.draw do
  resources :posts do
    resources :commentss
  end

  devise_for :users

  root 'welcome_page#welcome'

end
