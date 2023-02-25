class Review < ApplicationRecord
  belongs_to :user
  belongs_to :dish

  validates :content, presence: true, length: {minimum: 4}
  validates :rating, presence: true
  validates :rating, inclusion: {in: 0..5, allow_nil: false, message: " should be between 0 to 5" }
end
