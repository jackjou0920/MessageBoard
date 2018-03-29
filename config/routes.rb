Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  resources :messages do
    resources :comments
  end
  root 'messages#index'
end
