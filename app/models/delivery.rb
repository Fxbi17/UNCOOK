class Delivery < ApplicationRecord
  belongs_to :user
  belongs_to :shopping_list

  validates :status, presence: true
end
