Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'home#top'
  get 'home/about', as: 'about'
  
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :create, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
