Rails.application.routes.draw do
  resources :rivers
  resources :users
  resources :states
  resources :reports
  resources :stations
  resources :fish
  resources :flies
  resources :hatches
  resources :weathers
  resources :waters
  resources :sessions, only: [:new, :create, :destroy]
  get '/home' => 'sessions#new', as: 'home'

  get '/logout' => 'sessions#destroy'
  get '/users/:id/reports' => 'reports#userreports', as: 'userreports'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
