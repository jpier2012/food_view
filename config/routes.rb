Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: "callbacks" }

  get "/filters", to: "users#show_filters", as: "show_filters"
  post "/filters", to: "users#edit_filters", as: "edit_filters"

  resources :dishes
  resources :restaurants
  root to: "application#home"

  devise_scope :user do 
    get "login", to: "devise/sessions#new"
    get "signup", to: "devise/registrations#new"
    delete "logout", to: "devise/sessions#destroy"
  end
end
