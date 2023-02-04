class Review < ApplicationRecord
  belongs_to :user
  belongs_to :dish

  validates :content, presence: true, length: {minimum: 20}
  validates :rating, presence: true
end
