RSpec.feature 'View post', type: :feature do

  before(:each) do
    log_in
    @post = Post.new(:content => 'Ocean blue')
    @post.user_id = @user.id
    @post.save
  end

  scenario 'User can get to posts feed' do
    visit '/posts'
    expect(page).to have_content('Feed')
  end

  scenario 'User can view a post' do
    visit '/posts'
    expect(page).to have_content(@post.content)
  end
end
