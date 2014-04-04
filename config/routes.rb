BeerFridge::Application.routes.draw do
  root :to => 'welcome#index'
  resources :beers
  resources :regions
  resources :types
  match '/beers/:slug', {via: :post, to: 'ratings#create'}
end
