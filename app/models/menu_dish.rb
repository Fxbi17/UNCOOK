class MenuDish < ApplicationRecord
  belongs_to :dish
  belongs_to :menu

  has_one :shopping_list
end
