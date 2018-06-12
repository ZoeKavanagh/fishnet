RSpec.feature 'New post', type: :feature do
  let(:post_body) { 'Sandroller horn shark walu. Candlefish mosquitofish morwong spiny eel' }

  before (:each) do
    sign_up
  end
  
  scenario 'User can add a new post to the posts database' do
    visit new_post_path
    fill_in 'Content', with: post_body
    click_button 'Create Post'
    expect(Post.all.last.content).to eq post_body
  end

  scenario 'User can see post after submitting it' do
    visit new_post_path
    fill_in 'Content', with: post_body
    click_button 'Create Post'
    expect(page).to have_content(post_body)
  end
end
