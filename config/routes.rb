Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    get "/pokemon/types", to: "pokemon#types"
    resources :pokemon, only: [:index, :create, :show, :update] do
      resources :items, only: [:index, :create]
    end
    resources :items, only: [:update, :destroy]
  end
end
