require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        phone: "Phone",
        email: "Email",
        active: false
      ),
      Patient.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        phone: "Phone",
        email: "Email",
        active: false
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
