require 'spec_helper'

describe "tales/index" do
  before(:each) do
    assign(:tales, [
      stub_model(Tale,
        :title => "Title",
        :link => "Link"
      ),
      stub_model(Tale,
        :title => "Title",
        :link => "Link"
      )
    ])
  end

  it "renders a list of tales" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
