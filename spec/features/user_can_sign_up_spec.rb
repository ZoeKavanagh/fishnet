require 'rails_helper'

RSpec.feature "Sign-up", type: :feature do
  scenario "User can sign-up" do
    sign_up
    expect(page).to have_content("Welcome!")
  end
end
