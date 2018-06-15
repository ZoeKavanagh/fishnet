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
    fill_in "sign-up-confirm-email", with: "fishnet123"
    click_button "Sign up"
    fill_in 'post_content', with: "My first post"
    click_button 'Flap'
    fill_in "comment_content", with: "My first comment"
    click_button "Submit Comment"
    expect(page).to have_content "My first comment"
  end
end
