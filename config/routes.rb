Rails.application.routes.draw do
  resources :categories, param: :slug,     only: [:index, :show]
  resources :items,      param: :slug,     only: [:index, :show]
end
