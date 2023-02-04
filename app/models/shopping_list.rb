class ShoppingList < ApplicationRecord
  belongs_to :ingredient_dish
  belongs_to :menu_dish

  has_many :delivery
end
