Rails.application.routes.draw do
  resources :restaurants 
  devise_for :users, controller: { registrations: "registrations", omniauth_callbacks: "callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  root to: "application#home"

  devise_scope :user do 
    get "login", to: "devise/sessions#new"
    get "signup", to: "devise/registrations#new"
    delete "logout", to: "devise/sessions#destroy"
  end
end
