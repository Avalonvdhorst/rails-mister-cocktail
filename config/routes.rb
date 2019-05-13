Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails

  get "delete_cocktails/:id", to: "cocktails#destroy", as: :destroy_cocktail
end
