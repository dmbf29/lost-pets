Rails.application.routes.draw do
  root to: 'pets#index'
  # get '/', to: 'pets#index'

  get 'pets', to: 'pets#index', as: :pets
  get 'pets/new', to: 'pets#new', as: :new_pet
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
  get 'pets/:id', to: 'pets#show', as: :pet
  post 'pets', to: 'pets#create'
  patch 'pets/:id', to: 'pets#update'
end
