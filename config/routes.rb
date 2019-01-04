Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'api/locations/create', to: 'location#create'
  get 'locations', to: 'location#index'
end
