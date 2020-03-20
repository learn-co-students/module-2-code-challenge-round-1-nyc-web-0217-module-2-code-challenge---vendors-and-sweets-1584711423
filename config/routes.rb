Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sweets', to: "sweets#index", as: "sweets"
  resources :vendors_sweets, only: [:new, :create]
  resources :vendors, only: [:index, :show]
end
