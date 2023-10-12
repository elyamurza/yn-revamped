require 'rails_helper'

RSpec.describe "churches/edit", type: :view do
  let(:church) {
    Church.create!(
      name: "MyString",
      latitude: "9.99",
      longitude: "9.99"
    )
  }

  before(:each) do
    assign(:church, church)
  end

  it "renders the edit church form" do
    render

    assert_select "form[action=?][method=?]", church_path(church), "post" do

      assert_select "input[name=?]", "church[name]"

      assert_select "input[name=?]", "church[latitude]"

      assert_select "input[name=?]", "church[longitude]"
    end
  end
end
