class AddFlavorIngredientRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :flavor, :string
    add_column :recipes, :ingredient, :text
  end
end
