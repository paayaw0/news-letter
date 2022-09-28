Rails.application.routes.draw do
  root 'subscriptions#signups'
  post 'subscriptions/', to: 'subscriptions#create'
  patch 'subscription/:id', to: 'subscriptions#confirm', as: 'subscription_confirm'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
