require 'rails_helper'

RSpec.describe "speeches/new", type: :view do
  before(:each) do
    assign(:speech, Speech.new(
      :attachment => "MyString",
      :result => "MyString"
    ))
  end

  it "renders new speech form" do
    render

    assert_select "form[action=?][method=?]", speeches_path, "post" do

      assert_select "input[name=?]", "speech[attachment]"

      assert_select "input[name=?]", "speech[result]"
    end
  end
end
