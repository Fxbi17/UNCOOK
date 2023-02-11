class Ingredient < ApplicationRecord
  has_many :ingredient_dish

  validates :name, presence: true, uniqueness: true
  # validates :nutritional_values, presence: true

  has_one_attached :photo
end
