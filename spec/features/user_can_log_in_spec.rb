require 'rails_helper'

RSpec.feature "Log-in", type: :feature do
  scenario "User can log-in" do
    @user = create(:user)
    visit user_session_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log in"
    expect(page).to have_content("Signed in successfully")
  end
end
