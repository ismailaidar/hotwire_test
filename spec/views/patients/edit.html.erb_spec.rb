require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone: "MyString",
      email: "MyString",
      active: false
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input[name=?]", "patient[first_name]"

      assert_select "input[name=?]", "patient[last_name]"

      assert_select "input[name=?]", "patient[email]"

      assert_select "input[name=?]", "patient[phone]"

      assert_select "input[name=?]", "patient[email]"

      assert_select "input[name=?]", "patient[active]"
    end
  end
end
