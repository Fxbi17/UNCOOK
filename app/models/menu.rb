class Menu < ApplicationRecord
  belongs_to :user

  has_one :menu_dish
end
