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
    click_button 'Add ride'

    within('#rides') do
      expect(page).to have_content('Headlands Loop')
    end
  end
end