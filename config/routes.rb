Rails.application.routes.draw do
  root to: 'pages#home' #points to a controller and an action. ex: pages and action home
  get 'about', to: 'pages#about'
end
