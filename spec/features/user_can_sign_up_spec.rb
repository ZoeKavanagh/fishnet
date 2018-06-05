require 'rails_helper'

RSpec.feature "Sign-up", type: :feature do
  scenario "User can sign-up" do
    visit "/user/new"
    fill_in "firstname", with: "Zoe"
    fill_in "lastname", with: "Kavanagh"
    fill_in "email", with: "zoe@zoe.com"
    fill_in "password", with: "fishnet123"
    click_button "Submit"
    expect(page).to have_content("Hello, Zoe!")
  end
end
