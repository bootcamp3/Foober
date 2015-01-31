Rails.application.routes.draw do


  # Main

  namespace :main do
     get 'index'
     get 'branch'
     get 'ingredient' => 'ingredient'
     get 'menu'
     get 'success'
     get 'feedback'
  end  

  # Recipes

  post 'recipes/search' => 'recipes#search'
  get 'recipes/result' => 'recipes#result'
  post 'recipes/:id/like' => 'recipes#like'
  post 'recipes/:id/dislike' => 'recipes#dislike'

  # Orders

  post 'orders/new' => 'orders#new'

end

