Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
                       omniauth_callbacks: 'omniauth_callbacks'
                     }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#index'

  namespace :api do
    namespace :v1 do
      devise_for :users, skip: :omniauth_callbacks,
                         controllers: {
                           registrations: 'api/v1/registrations'
                         }
      resources :posts, only: %i(index create)
    end
  end
end
