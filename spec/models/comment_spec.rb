require 'rails_helper'

RSpec.describe Comment, type: :model do
  before (:each) do
    @user = create(:user)
    @post = create(:post_1, user: @user)
    @comment = create(:comment_1, user: @user, post: @post)
  end

  context '#create' do
    it 'adds a comment to a post' do
      expect(Comment.all.last.content).to eq @comment.content
    end

    it 'adds user to a comment' do
      expect(Comment.all.last.user).to eq @user
    end
  end
end
