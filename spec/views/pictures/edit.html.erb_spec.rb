require 'spec_helper'

describe "pictures/edit" do
  before(:each) do
    @picture = assign(:picture, stub_model(Picture,
      :title => "MyString",
      :artist => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", picture_path(@picture), "post" do
      assert_select "input#picture_title[name=?]", "picture[title]"
      assert_select "input#picture_artist[name=?]", "picture[artist]"
      assert_select "input#picture_image[name=?]", "picture[image]"
    end
  end
end
