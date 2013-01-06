require 'spec_helper'

describe "tales/edit" do
  before(:each) do
    @tale = assign(:tale, stub_model(Tale,
      :title => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit tale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tales_path(@tale), :method => "post" do
      assert_select "input#tale_title", :name => "tale[title]"
      assert_select "input#tale_link", :name => "tale[link]"
    end
  end
end
