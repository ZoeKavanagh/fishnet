require 'rails_helper'

RSpec.feature "Log-out", type: :feature do
  scenario "User can log-out" do
    @user = create(:user)
    visit user_session_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log in"
    click_link "Logout"
    expect(page).to have_content("Signed out successfully")
  end
end
