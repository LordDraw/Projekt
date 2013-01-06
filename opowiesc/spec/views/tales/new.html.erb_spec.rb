require 'spec_helper'

describe "tales/new" do
  before(:each) do
    assign(:tale, stub_model(Tale,
      :title => "MyString",
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new tale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tales_path, :method => "post" do
      assert_select "input#tale_title", :name => "tale[title]"
      assert_select "input#tale_link", :name => "tale[link]"
    end
  end
end
