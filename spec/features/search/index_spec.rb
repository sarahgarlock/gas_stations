require 'rails_helper'

RSpec.describe '/search' do
  it 'finds the closest fuel station to me' do
    visit root_path

    select('Griffin Coffee', from: :location)
    click_button 'Find Nearest Station'

    expect(current_path).to eq(search_path)

    expect(page).to have_content("Edgewater Public Market - Tesla Supercharger")
    expect(page).to have_content("5505 W 20th Ave")
    expect(page).to have_content("ELEC")
    expect(page).to have_content("24 hours daily")
  end
end