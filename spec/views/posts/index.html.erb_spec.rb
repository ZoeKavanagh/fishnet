require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    @post_content = "FIIIIIIISH"
    @user = create(:user)
    @post = assign(:posts, [
      Post.create!(:content => @post_content, :user => @user),
      Post.create!(:content => @post_content, :user => @user),
    ])
  end

  xit "renders a list of posts" do
    render
    assert_select "div.alert", :text => @post_content.to_s, :count => 2
  end
end
