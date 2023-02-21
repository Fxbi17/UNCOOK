class MenuDish < ApplicationRecord
  belongs_to :dish
  belongs_to :menu

  has_many :shopping_list
end
