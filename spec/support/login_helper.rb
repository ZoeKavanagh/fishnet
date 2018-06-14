def sign_up
  visit new_user_registration_path
  fill_in "First name", with: "Zoe"
  fill_in "Surname", with: "Kavanagh"
  fill_in "sign-up-email", with: "zoe@zoe.com"
  fill_in "sign-up-password", with: "fishnet123"
  fill_in "sign-up-confirm-email", with: "fishnet123"
  click_button "Sign up"
end

def log_in
  @user = create(:user)
  visit user_session_path
  fill_in "login-email", with: @user.email
  fill_in "login-password", with: @user.password
  click_button "Log in"
end
