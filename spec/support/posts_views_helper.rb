def assign_a_post
  @post_content = "FIIIIIIISH"
  @user = create(:user)
  @post = assign(:post, Post.create!(
    :content => @post_content,
    :user => @user
  ))
end
