require 'rails_helper'

RSpec.describe "drugs/index", type: :view do
  before(:each) do
    assign(:drugs, [
      Drug.create!(
        name: "Name",
        dose: "Dose",
        company: "Company"
      ),
      Drug.create!(
        name: "Name",
        dose: "Dose",
        company: "Company"
      )
    ])
  end

  it "renders a list of drugs" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Dose".to_s, count: 2
    assert_select "tr>td", text: "Company".to_s, count: 2
  end
end
