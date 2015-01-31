class Recipe < ActiveRecord::Base
  has_many :compositions
  has_many :ingredients, through: :compositions
end
