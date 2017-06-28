Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home' #points to a controller and an action. ex: pages and action home
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
