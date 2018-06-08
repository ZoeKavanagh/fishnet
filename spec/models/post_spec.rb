require 'rails_helper'

RSpec.describe Post, type: :model do

    before (:all) do
      @post1 = create(:post_1)
    end

    it 'is a valid post with valid attributes' do
      expect(@post1).to be_valid
    end

    it 'has a body' do
      expect(Post.all.last.body).to eq @post1.body
    end
end
