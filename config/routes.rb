Rails.application.routes.draw do
  resources :flights
  resources :aircrafts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "aircrafts#index"

  resources :aircrafts do
    resources :flights do
      collection do
        post :import
      end
    end
  end
  
end
