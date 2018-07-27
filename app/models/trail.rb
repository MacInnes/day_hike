class Trail < ApplicationRecord
  has_many :trips_trails
  has_many :trips, through: :trips_trails

end
