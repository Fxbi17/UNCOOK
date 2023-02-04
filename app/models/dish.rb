class Dish < ApplicationRecord
  has_many :menu_dish
  has_many :ingredient_dish
  has_many :reviews, dependent: :destroy

  # validates :name, presence: true
  # validates :description, presence: true
  # validates :numpers, presence: true
end
