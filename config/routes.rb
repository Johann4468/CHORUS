Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: %i[index show delete update] do
    resources :profile, only: %i[show]
  end
end
