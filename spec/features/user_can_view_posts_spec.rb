RSpec.feature 'View post', type: :feature do
  scenario 'User can get to posts feed' do
    visit '/posts'
    expect(page).to have_content('Posts feed')
  end
end
