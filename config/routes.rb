Rails.application.routes.draw do
  resources :resources
  resources :categories

  root 'categories#index'

end
