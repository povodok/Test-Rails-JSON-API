Rails.application.routes.draw do
  resources :categories, param: :category_slug, only: [:index, :show]
  resources :items,      param: :item_slug,     only: [:index, :show]
end
