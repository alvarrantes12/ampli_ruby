require 'rails_helper'

RSpec.describe "animals/index", type: :view do
  before(:each) do
    assign(:animals, [
      Animal.create!(
        name: "Name",
        specie: 2
      ),
      Animal.create!(
        name: "Name",
        specie: 2
      )
    ])
  end

  it "renders a list of animals" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
