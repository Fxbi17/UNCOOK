class Dish < ApplicationRecord
  has_many :menu_dish
  has_many :ingredient_dish
  has_many :review
end
