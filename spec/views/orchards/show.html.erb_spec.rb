require 'spec_helper'

describe "orchards/show" do
  before(:each) do
    @orchard = assign(:orchard, stub_model(Orchard,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
