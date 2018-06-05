require 'rails_helper'

RSpec.feature "Sign-up", type: :feature do
  scenario "User can sign-up" do
    visit "/user/new"
    fill_in "Firstname", with: "Zoe"
    fill_in "Lastname", with: "Kavanagh"
    fill_in "Email", with: "zoe@zoe.com"
    fill_in "Password", with: "fishnet123"
    click_button "Submit"
    expect(page).to have_content("Hello, Zoe!")
  end
end
