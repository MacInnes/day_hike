class Trip < ApplicationRecord
  has_many :trips_trails
  has_many :trails, through: :trips_trails
end
