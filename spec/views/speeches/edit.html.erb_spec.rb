require 'rails_helper'

RSpec.describe "speeches/edit", type: :view do
  before(:each) do
    @speech = assign(:speech, Speech.create!(
      :attachment => "MyString",
      :result => "MyString"
    ))
  end

  it "renders the edit speech form" do
    render

    assert_select "form[action=?][method=?]", speech_path(@speech), "post" do

      assert_select "input[name=?]", "speech[attachment]"

      assert_select "input[name=?]", "speech[result]"
    end
  end
end
