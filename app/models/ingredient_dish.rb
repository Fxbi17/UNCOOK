class IngredientDish < ApplicationRecord
  belongs_to :ingredient
  belongs_to :dish

  has_many :shopping_list
end
