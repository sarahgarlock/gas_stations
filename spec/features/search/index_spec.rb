require 'rails_helper'

RSpec.describe '/search' do
  describe "searching for directions" do
    before(:each) do
      visit root_path

      select('Griffin Coffee', from: :location)
      click_button 'Find Nearest Station'

    end
    it 'finds the closest fuel station to me' do
      expect(current_path).to eq(search_path)

      expect(page).to have_content("Edgewater Public Market - Tesla Supercharger")
      expect(page).to have_content("5505 W 20th Ave")
      expect(page).to have_content("ELEC")
      expect(page).to have_content("24 hours daily")

    end

    it 'shows directions' do
      expect(page).to have_content("Head east. Go for 125 ft.")
      expect(page).to have_content("Turn left. Go for 197 ft.")
      expect(page).to have_content("Turn right toward W 22nd Ave. Go for 115 ft.")
      expect(page).to have_content("Continue on W 22nd Ave. Go for 0.2 mi.")
      expect(page).to have_content("Turn left onto Sheridan Blvd (CO-95). Go for 0.2 mi.")
      expect(page).to have_content("Turn left onto W 25th Ave. Go for 246 ft.")
      expect(page).to have_content("Arrive at W 25th Ave.")
      expect(page).to have_content("Time: 167")
      expect(page).to have_content("Distance: 0.5325")
      # Not same information as postman
    end
  end
end