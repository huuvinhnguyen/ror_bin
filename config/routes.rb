Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  scope :admin do
    resources 'users'
    get   'users/new', to: "users#new"
  end
end
