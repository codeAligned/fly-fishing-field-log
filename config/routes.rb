Rails.application.routes.draw do
  resources :rivers
  resources :users
  resources :states
  resources :posts
  resources :stations
  resources :sessions, only: [:new, :create, :destroy]
  get '/home' => 'sessions#new', as: 'home'

  get '/logout' => 'sessions#destroy'
  get '/:id/posts' => 'posts#index', as: 'userposts'
###    url          controller#action
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
