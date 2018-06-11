RSpec.feature 'View post', type: :feature do

  before(:each) do
    @post = create(:post_1)
  end

  scenario 'User can get to posts feed' do
    visit '/posts'
    expect(page).to have_content('Content')
  end

  scenario 'User can view a post' do
    visit '/posts'
    expect(page).to have_content(@post.content)
  end
end
