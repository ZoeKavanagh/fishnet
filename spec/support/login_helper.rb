def sign_up
  visit new_user_registration_path
  fill_in "Firstname", with: "Zoe"
  fill_in "Lastname", with: "Kavanagh"
  fill_in "Email", with: "zoe@zoe.com"
  fill_in "Password", with: "fishnet123"
  fill_in "Password confirmation", with: "fishnet123"
  click_button "Sign up"
end
