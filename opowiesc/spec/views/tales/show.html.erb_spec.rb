require 'spec_helper'

describe "tales/show" do
  before(:each) do
    @tale = assign(:tale, stub_model(Tale,
      :title => "Title",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Link/)
  end
end
