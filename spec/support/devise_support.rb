module ValidUserRequestHelper
  def sign_in_as_a_valid_user
    @user ||= FactoryGirl.create :user

    sign_in_as(@user)
  end

  def sign_in_as(user)
    visit root_path
    click_link 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end
end

RSpec.configure do |config|
  config.include ValidUserRequestHelper
end