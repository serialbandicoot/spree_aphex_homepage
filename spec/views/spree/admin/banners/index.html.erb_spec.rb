require 'spec_helper'

describe "spree_admin_banners/index" do
  before(:each) do
    assign(:spree_admin_banners, [
      stub_model(Spree::Admin::Banner,
        :position => 1,
        :tagline => "Tagline",
        :target_url => "Target Url",
        :image_file_name => "Image File Name",
        :image_content_type => "Image Content Type",
        :image_file_size => 2
      ),
      stub_model(Spree::Admin::Banner,
        :position => 1,
        :tagline => "Tagline",
        :target_url => "Target Url",
        :image_file_name => "Image File Name",
        :image_content_type => "Image Content Type",
        :image_file_size => 2
      )
    ])
  end

  it "renders a list of spree_admin_banners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Tagline".to_s, :count => 2
    assert_select "tr>td", :text => "Target Url".to_s, :count => 2
    assert_select "tr>td", :text => "Image File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
