require 'rails_helper'

RSpec.feature "Log-out", type: :feature do
  scenario "User can log-out" do
    log_in
    click_link "Logout"
    expect(page).to have_content("Signed out successfully")
  end
end
