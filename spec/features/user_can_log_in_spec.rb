require 'rails_helper'

RSpec.feature "Log-in", type: :feature do
  scenario "User can log-in" do
    log_in
    expect(page).to have_content("Signed in successfully")
  end
end
