require 'rails_helper'

RSpec.describe Post, type: :model do
  before (:each) do
    @user = create(:user)
    @post = create(:post_1, user: @user)
  end

  context '#create' do
    it 'adds a post content' do
      expect(Post.all.last.content).to eq @post.content
    end

    it 'adds user to a post' do
      expect(Post.all.last.user).to eq @user
    end
  end
end
