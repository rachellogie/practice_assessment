Rails.application.routes.draw do
  root 'magazines#index'

  get 'magazines/new', to: 'magazines#new', as: 'new_magazine'
  get 'magazines', to: 'magazines#index'
  post 'magazines', to: 'magazines#create'
end
