class Venue < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
