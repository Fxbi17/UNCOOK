class Menu < ApplicationRecord
  belongs_to :user

  has_many :menu_dish
end
