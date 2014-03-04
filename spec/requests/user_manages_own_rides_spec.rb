require 'spec_helper'

feature 'User can manage their own rides' do
  scenario 'Viewing list of their rides' do
    visit root_path

    expect(page).to have_content('Welcome to your rides page')
  end

  scenario 'Adds a ride to their rides page' do
    visit root_path
    click_link 'Add ride'
    fill_in 'Title', with: 'Headlands Loop'
    click_button 'Create ride'

    within('#rides') do
      expect(page).to have_content('Headlands Loop')
    end
  end

  scenario 'Sees a count of total rides they have created' do
    visit root_path
    expect(page).to have_content('Ride count: 0')

    click_link 'Add ride'
    fill_in 'Title', with: 'Headlands Loop'
    click_button 'Create ride'

    expect(page).to have_content('Ride count: 1')
  end
end