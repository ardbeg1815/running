Rails.application.routes.draw do
  root to: 'distances#index'
  resources :distances
end
