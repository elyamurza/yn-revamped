require 'rails_helper'

RSpec.describe "churches/new", type: :view do
  before(:each) do
    assign(:church, Church.new(
      name: "MyString",
      latitude: "9.99",
      longitude: "9.99"
    ))
  end

  it "renders new church form" do
    render

    assert_select "form[action=?][method=?]", churches_path, "post" do

      assert_select "input[name=?]", "church[name]"

      assert_select "input[name=?]", "church[latitude]"

      assert_select "input[name=?]", "church[longitude]"
    end
  end
end
