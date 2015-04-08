Rails.application.routes.draw do
  root  'static_pages#home'
  get 'home' => 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'

  devise_for :users
  
  resources :books

  namespace :admin do 
    resources :books
  end
end
