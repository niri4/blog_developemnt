Rails.application.routes.draw do
  devise_for :authors
  resources :blogs  do
    resources :comments, only: [:create, :destroy]
  end
  root to: "blogs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
