Rails.application.routes.draw do
  resources :rivers
  resources :users
  resources :states, only: [:new, :create, :destroy, :update]
  resources :reports
  resources :stations, only: [:new, :create, :destroy, :update]
  resources :fish, only: [:new, :create, :destroy, :update]
  resources :flies, only: [:new, :create, :destroy, :update]
  resources :hatches, only: [:new, :create, :destroy, :update]
  resources :weathers, only: [:new, :create, :destroy, :update]
  resources :waters, only: [:new, :create, :destroy, :update]
  resources :sessions, only: [:new, :create, :destroy]
  
  get '/home' => 'sessions#new', as: 'home'
  get '/logout' => 'sessions#destroy'
  get '/users/:id/reports' => 'reports#userreports', as: 'userreports'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
