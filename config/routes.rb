BeerFridge::Application.routes.draw do
  root :to => 'welcome#index'
  resources :beers
  resources :regions
  resources :types
  resources :breweries
  resources :ratings, only: [:create]
  match '/beers/:slug', {via: :post, to: 'ratings#create'}
end
