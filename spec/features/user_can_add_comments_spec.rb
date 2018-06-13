RSpec.feature 'New comment', type: :feature do
  let(:comment_body) { 'This is a nice post!' }

  # before (:each) do
  #   sign_up
  # end

  scenario 'User can add a new comment to a post' do
    visit root_path
    fill_in "user_firstname", with: "Zoe"
    fill_in "user_lastname", with: "Kavanagh"
    fill_in "sign-up-email", with: "zoe@zoe.com"
    fill_in "sign-up-password", with: "fishnet123"
    fill_in "user_password_confirmation", with: "fishnet123"
    click_button "Sign up"
    click_on "New Post"
    fill_in "post_content", with: 'My first post'
    click_button "Create Post"
  end
end
