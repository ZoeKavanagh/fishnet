require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    assign_a_post
  end

  it "renders the edit post form" do
    render
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "textarea[name=?]", "post[content]"
    end
  end
end
