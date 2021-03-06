require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      title: "MyString",
      body: "MyString",
      user: nil,
      comments: nil
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "input[name=?]", "post[body]"

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[comments_id]"
    end
  end
end
