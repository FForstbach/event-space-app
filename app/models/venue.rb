class Venue < ApplicationRecord
  include Filterable
  belongs_to :user
  validates :name, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.by_city_and_capacity(city = nil, capacity = nil)
    return where(city: city, capacity: capacity) if city && capacity
    return where(city: city) if city
    return where(capacity: capacity) if capacity
    all
  end

end
