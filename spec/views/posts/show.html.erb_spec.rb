require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    assign_a_post
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@post_content)
  end
end
