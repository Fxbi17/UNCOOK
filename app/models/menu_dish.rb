class MenuDish < ApplicationRecord
  belongs_to :dish
  belongs_to :menu, dependent: :destroy

  has_many :shopping_list
  # acts_as_list
end
