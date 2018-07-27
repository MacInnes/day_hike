# As a visitor,
# when I visit a hiking trip's page,
# I see a list of trails included in the trip,
# I see the name, address, and length for each trail.
require 'rails_helper'

describe 'visitor' do
  describe 'visits trip show page' do
    it 'sees a list of all trails included in the trip, with name, address and length of each trail' do
      trip = Trip.create(name: "safsdf")

      trail_1 = Trail.create(length: 123, name: "sadf", address: "asdf")
      trail_2 = Trail.create(length: 204, name: "kjhsdf", address: "ksdf")

      trip.trips_trails.create(trail: trail_1)
      trip.trips_trails.create(trail: trail_2)



      visit trip_path(trip)

      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_1.length)
      expect(page).to have_content(trail_1.address)
      expect(page).to have_content(trail_2.name)
      expect(page).to have_content(trail_2.length)
      expect(page).to have_content(trail_2.address)
    end
  end
end
