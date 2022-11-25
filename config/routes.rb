Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :instruments, only: %i[index show] do
    resources :rentals, only: %i[new create]
  end
  resources :rentals, only: :index
  resource :profile, only: %i[show]

  namespace :owner do
    resources :instruments, only: %i[new create index]
    resources :rentals, only: %i[index]

    resources :rentals, only: [] do
      member do
        patch 'accept'
        patch 'refuse'
      end
    end
  end
end
