BeerFridge::Application.routes.draw do
  root :to => 'welcome#index'
  resources :beers
  resources :regions
  resources :types
end
