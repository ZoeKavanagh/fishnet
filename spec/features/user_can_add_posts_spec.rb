RSpec.feature 'New post', type: :feature do
let(:post_body) { 'Sandroller horn shark walu. Candlefish mosquitofish morwong spiny eel' }

  scenario 'User can add a new post to the posts database' do
    visit '/posts'
    fill_in 'body', with: post_body
    click_button 'submit post'
    expect(Post.all.last.body).to eq post_body
  end

  scenario 'User can see post after submitting it' do
    visit '/posts'
    fill_in 'body', with: post_body
    click_button 'submit post'
    expect(page).to have_content(post_body)
  end
end
