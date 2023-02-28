class MenuDish < ApplicationRecord
  belongs_to :dish
  belongs_to :menu

  has_many :shopping_list
  acts_as_list scope: :menu, add_new_at: nil

  def find_position_in_calendar(position)
    find_by(position: position)
  end
end
