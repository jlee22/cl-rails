Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "categories#index"

  resources :categories, only: [:index, :show] do
    resources :articles, except: [:index]
  end
end
