Rails.application.routes.draw do

  # Main
  root :to => 'main#index'

  namespace :main do
    get 'login'
    get 'signout'
    get 'branch'
    get 'ingredient'
    get 'menu'
    get 'success'
    get 'feedback'

    post 'stars'
  end

  # Recipes

  post 'recipes/search' => 'recipes#search'
  get 'recipes/result' => 'recipes#result'

  # Orders
  resources :orders

  # grape API

  mount Foober::API => '/'
end