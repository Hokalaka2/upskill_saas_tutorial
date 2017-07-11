Rails.application.routes.draw do
  root to: 'pages#home' #points to a controller and an action. ex: pages and action home
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
