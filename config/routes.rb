Rails.application.routes.draw do
  # get 'home/index'

  resources :orders
  resources :clients do 
    get :autocomplete_client_name, :on => :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home do
    get :autocomplete_client_name, on: :collection
  end
end
