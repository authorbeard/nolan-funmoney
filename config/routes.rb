Rails.application.routes.draw do
  
  root 'application#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do 
    get 'sign_in', to: 'devise/sessions#new'
    delete 'sign_out', to: 'devise/sessions#destroy'
  end

  resources :users, only: [:show, :edit, :update, :destroy]


end
