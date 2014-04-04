BeerFridge::Application.routes.draw do
  resources :beers
  resources :regions
  resources :types
end
