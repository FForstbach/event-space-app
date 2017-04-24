class Venue < ApplicationRecord
  validates :address, presence: true
  validates :capacity
  validates :category, presence: true
  validates :price
end
