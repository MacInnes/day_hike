require 'rails_helper'

describe 'visitor' do
  describe 'visits trips index page' do
    it 'can see a list of hiking trip names' do
      trip_1 = Trip.create(name: 'Chataqua hike')
      trip_2 = Trip.create(name: 'Mesa Trail hike')

      visit trips_path

      expect(page).to have_content(trip_1.name)
      expect(page).to have_content(trip_2.name)
    end

    it "can click the name of a trip to view that trip's show page" do
      trip_1 = Trip.create(name: 'Chataqua hike')
      trip_2 = Trip.create(name: 'Mesa Trail hike')

      visit trips_path

      click_on trip_1.name

      expect(current_path).to eq(trip_path(trip_1))
      expect(page).to have_content(trip_1.name)
      expect(page).to_not have_content(trip_2.name)
    end
  end
end
