Rails.application.routes.draw do
  resources :requests
  resources :ngo_profiles
  resources :user_profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
