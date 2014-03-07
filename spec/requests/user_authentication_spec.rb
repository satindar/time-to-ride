require 'spec_helper'

feature 'User can see authentication links' do
  scenario 'when not signed in' do
    visit root_path

    expect(page).to have_link('Login')
  end
end

feature 'Sign in as a user' do
  scenario 'with an email address' do
    sign_in_as_a_valid_user

    expect(page).to have_css '.notice', text: 'Signed in successfully'
  end

end
