Rails.application.routes.draw do
  devise_for :accounts
  root "articles#index"

  resources :articles do
    resources :comments
  end

  resources :articles do
    resources :likes
  end

end
