Rails.application.routes.draw do
  get 'users/index'

  devise_for :users,  :controllers => { :shows => "devise/my_devise/shows"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  match '/users',    to: 'users#index',   via: 'get'
  get   '/'     ,    to: 'pages#index'
  get  '/show' ,   to: 'cars#show'
  get  '/index' ,   to: 'cars#index'
  get  '/profile' ,  to:  'cars#new'
  post '/profile' ,  to:  'cars#create'
  get  '/profile/edit/:id' ,  to:  'cars#edit'
  post  '/profile/edit/:id' ,  to: 'cars#update'
   resources :cars,   only: [:create, :destroy]
end
