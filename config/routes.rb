Rails.application.routes.draw do

  namespace :dashboard do
    get '/', to: 'dashboard#index'
    resources :vehicles
  end

  namespace :brand do
    get '/:id', to: 'brands#show', as: 'profile'
  end

  namespace :member do
    get '/:id', to: 'members#show', as: 'member'
  end

  devise_for :users, controllers: {sessions: 'sessions' }
  devise_for :brand_users, controllers: { sessions: 'sessions', registrations: 'users/registrations' }, skip: [:sessions]
  root to: 'home#index'
end
