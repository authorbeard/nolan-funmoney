Rails.application.routes.draw do
  devise_for :users
  mount ActionCable.server => '/cable'
  root 'welcome#index'

  resources :users
  
end
