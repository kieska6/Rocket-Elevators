require 'rails_helper'

RSpec.describe "speeches/show", type: :view do
  before(:each) do
    @speech = assign(:speech, Speech.create!(
      :attachment => "Attachment",
      :result => "Result"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Attachment/)
    expect(rendered).to match(/Result/)
  end
end
