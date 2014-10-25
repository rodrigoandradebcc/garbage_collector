GarbageCollector::Application.routes.draw do
  
  devise_for :users,  controllers: { registrations: "users/registrations" }
  
  root 'welcome#index'

end
