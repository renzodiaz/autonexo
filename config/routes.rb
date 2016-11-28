Rails.application.routes.draw do

  namespace :dashboard do
    get '/', to: 'dashboard#index'
    resources :vehicles
  end

  devise_for :users, controllers: { sessions: 'sessions' }
  devise_for :brand_users, controllers: { sessions: 'sessions', registrations: 'users/registrations' }, skip: [:sessions]
  root to: 'home#index'
end
