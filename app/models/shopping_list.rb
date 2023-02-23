class ShoppingList < ApplicationRecord
  belongs_to :ingredient_dish
  belongs_to :menu_dish, dependent: :destroy

  has_many :delivery
end
