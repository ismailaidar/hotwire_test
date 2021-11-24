require 'rails_helper'

RSpec.describe "drugs/show", type: :view do
  before(:each) do
    @drug = assign(:drug, Drug.create!(
      name: "Name",
      dose: "Dose",
      company: "Company"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Dose/)
    expect(rendered).to match(/Company/)
  end
end
