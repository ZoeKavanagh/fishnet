RSpec.feature 'New post', type: :feature do
  let(:post_body) { 'Sandroller horn shark walu. Candlefish mosquitofish morwong spiny eel' }

  before (:each) do
    sign_up
  end

  scenario 'User can add a new post to the posts database' do
    visit posts_path
    fill_in 'post_content', with: post_body
    click_button 'Flap'
    expect(Post.all.last.content).to eq post_body
  end

  scenario 'User can see post after submitting it' do
    visit posts_path
    fill_in 'post_content', with: post_body
    click_button 'Flap'
    expect(page).to have_content(post_body)
  end
end
