Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  devise_for :brand_users, controllers: { sessions: 'sessions', registrations: 'users/registrations' }, skip: [:sessions]
  root to: 'home#index'
end
