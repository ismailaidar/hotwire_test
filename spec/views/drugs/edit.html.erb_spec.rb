require 'rails_helper'

RSpec.describe "drugs/edit", type: :view do
  before(:each) do
    @drug = assign(:drug, Drug.create!(
      name: "MyString",
      dose: "MyString",
      company: "MyString"
    ))
  end

  it "renders the edit drug form" do
    render

    assert_select "form[action=?][method=?]", drug_path(@drug), "post" do

      assert_select "input[name=?]", "drug[name]"

      assert_select "input[name=?]", "drug[dose]"

      assert_select "input[name=?]", "drug[company]"
    end
  end
end
