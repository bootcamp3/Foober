class Ingredient < ActiveRecord::Base
  has_many :compositions
  has_many :recipes, through: :compositions
end
