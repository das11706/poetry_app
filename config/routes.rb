Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/authors', to: "lists#get_authors"
  # resources :lists, only: [:index, :new, :show, :create]
  resources :poems, :authors
    # get 'show', to: 'poems#show'
  
  # Defines the root path route ("/")
  # root "articles#index"
end
