Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#home'

  devise_for :users

  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
end
