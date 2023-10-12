require 'rails_helper'

RSpec.describe "churches/index", type: :view do
  before(:each) do
    assign(:churches, [
      Church.create!(
        name: "Name",
        latitude: "9.99",
        longitude: "9.99"
      ),
      Church.create!(
        name: "Name",
        latitude: "9.99",
        longitude: "9.99"
      )
    ])
  end

  it "renders a list of churches" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
