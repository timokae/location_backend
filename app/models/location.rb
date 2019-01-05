class Location < ApplicationRecord
  validates :longitude, presence: true
  validates :latitude, presence: true
  validates :measured_at, presence: true
  validates :strategy, presence: true
  validates :name, presence: true

  enum strategy: %i[periodically distance_based movement_based sensor_based]
end
