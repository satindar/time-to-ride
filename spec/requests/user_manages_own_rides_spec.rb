require 'spec_helper'

feature 'User can manage their own rides' do
  scenario 'Viewing list of their rides' do
    visit root_path

    expect(page).to have_content("Welcome to your rides page")
  end
end