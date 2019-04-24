Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  resources :cocktails, only: [:index, :show, :new]
end
