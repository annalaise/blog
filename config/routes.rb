Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :articles do
    resources :comments
  end
  resources  :tags

end
