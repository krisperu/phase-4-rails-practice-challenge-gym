Rails.application.routes.draw do
  resources :memberships, except: :destroy
  resources :clients, only: [:index, :show]
  resources :gyms, except: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
