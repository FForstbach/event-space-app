class Venue < ApplicationRecord
  belongs_to :user
  validate :name, presence: true
  validates :address, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
