require 'rails_helper'

RSpec.describe "speeches/index", type: :view do
  before(:each) do
    assign(:speeches, [
      Speech.create!(
        :attachment => "Attachment",
        :result => "Result"
      ),
      Speech.create!(
        :attachment => "Attachment",
        :result => "Result"
      )
    ])
  end

  it "renders a list of speeches" do
    render
    assert_select "tr>td", :text => "Attachment".to_s, :count => 2
    assert_select "tr>td", :text => "Result".to_s, :count => 2
  end
end
