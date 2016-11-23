Rails.application.routes.draw do
  
  devise_for :users
  get 'pages/about', controller: 'pages', action: 'about'
  get 'pages/contact', controller: 'pages', action: 'contact'
  
  resources :pages
  resources :restaurants do
    resources :reviews, except: [:show, :index]
  end

  root to: 'restaurants#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
