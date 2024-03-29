class Dish < ApplicationRecord
  has_many :menu_dish, dependent: :destroy
  has_many :ingredient_dish, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_one_attached :photo

  # validates :name, presence: true
  # validates :description, presence: true
  # validates :numpers, presence: true

  acts_as_favoritable
end
