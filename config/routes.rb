GarbageCollector::Application.routes.draw do
  
  resources :collection_points

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)

  resources :bonus, only: [:index]

  resources :abouts, only: [:index]

  resources :contacts, only: [:new, :create]

  devise_for :users,  controllers: { registrations: "users/registrations",  
  	omniauth_callbacks: "users/omniauth_callbacks" }
  
  root 'welcome#index'

end
