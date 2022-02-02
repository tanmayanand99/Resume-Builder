Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'signup'  => 'users#new'
  post   'signup'  => 'users#create'
  resources :users, only: [:create]
  resources :profiles , only: [:update,:new]
  resources :educations , only: [:new]
end
