class Venue < ApplicationRecord
  belongs_to :user
  validates :address, presence: true
  validates :capacity
  validates :category, presence: true
  validates :price
end
