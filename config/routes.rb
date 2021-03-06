Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:index, :new, :create, :show]
  resources :cocktails, only: [:index, :new, :create, :show, :destroy] do
    resources :doses, only: [:new, :create, :show, :destroy]
  end
end
