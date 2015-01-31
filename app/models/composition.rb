class Composition < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe
end
