RSpec.feature 'View post', type: :feature do

  before(:each) do
    create(:post_1)
  end

  scenario 'User can get to posts feed' do
    visit '/posts'
    expect(page).to have_content('Latest posts')
  end

  scenario 'User can view a post' do
    visit '/posts'
    expect(page).to have_css('.post')
    expect(page).to have_css('.post-user')
    expect(page).to have_css('.post-body')
    expect(page).to have_css('.post-timestamp')
  end
end
