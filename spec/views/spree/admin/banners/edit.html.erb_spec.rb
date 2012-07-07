require 'spec_helper'

describe "spree_admin_banners/edit" do
  before(:each) do
    @banner = assign(:banner, stub_model(Spree::Admin::Banner,
      :position => 1,
      :tagline => "MyString",
      :target_url => "MyString",
      :image_file_name => "MyString",
      :image_content_type => "MyString",
      :image_file_size => 1
    ))
  end

  it "renders the edit banner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spree_admin_banners_path(@banner), :method => "post" do
      assert_select "input#banner_position", :name => "banner[position]"
      assert_select "input#banner_tagline", :name => "banner[tagline]"
      assert_select "input#banner_target_url", :name => "banner[target_url]"
      assert_select "input#banner_image_file_name", :name => "banner[image_file_name]"
      assert_select "input#banner_image_content_type", :name => "banner[image_content_type]"
      assert_select "input#banner_image_file_size", :name => "banner[image_file_size]"
    end
  end
end
