require 'spec_helper'

feature 'User can sign in and out' do
  scenario 'User is not signed in' do
    visit root_path

    expect(page).to have_link('Login')
  end

end