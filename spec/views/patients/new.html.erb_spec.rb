require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone: "MyString",
      email: "MyString",
      active: false
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input[name=?]", "patient[first_name]"

      assert_select "input[name=?]", "patient[last_name]"

      assert_select "input[name=?]", "patient[email]"

      assert_select "input[name=?]", "patient[phone]"

      assert_select "input[name=?]", "patient[email]"

      assert_select "input[name=?]", "patient[active]"
    end
  end
end
