require 'rails_helper'

RSpec.describe "drugs/new", type: :view do
  before(:each) do
    assign(:drug, Drug.new(
      name: "MyString",
      dose: "MyString",
      company: "MyString"
    ))
  end

  it "renders new drug form" do
    render

    assert_select "form[action=?][method=?]", drugs_path, "post" do

      assert_select "input[name=?]", "drug[name]"

      assert_select "input[name=?]", "drug[dose]"

      assert_select "input[name=?]", "drug[company]"
    end
  end
end
