GarbageCollector::Application.routes.draw do
  
  resources :bonus, only: [:index]

  resources :abouts, only: [:index]

  resources :contacts, only: [:new, :create]

  devise_for :users,  controllers: { registrations: "users/registrations",  
  	omniauth_callbacks: "users/omniauth_callbacks" }
  
  root 'welcome#index'

end
