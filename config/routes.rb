Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: "callbacks" }

  root to: "application#home"

  get "/filters", to: "users#show_filters", as: "show_filters"
  post "/filters", to: "users#edit_filters", as: "edit_filters"
  delete "/filters", to: "users#clear_filters", as: "clear_filters"

  devise_scope :user do 
    get "login", to: "devise/sessions#new"
    get "signup", to: "devise/registrations#new"
    delete "logout", to: "devise/sessions#destroy"
  end

  resources :dishes
  resources :restaurants do
    resources :dishes
  end

end
