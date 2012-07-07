require 'spec_helper'

describe "spree_admin_banners/show" do
  before(:each) do
    @banner = assign(:banner, stub_model(Spree::Admin::Banner,
      :position => 1,
      :tagline => "Tagline",
      :target_url => "Target Url",
      :image_file_name => "Image File Name",
      :image_content_type => "Image Content Type",
      :image_file_size => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Tagline/)
    rendered.should match(/Target Url/)
    rendered.should match(/Image File Name/)
    rendered.should match(/Image Content Type/)
    rendered.should match(/2/)
  end
end
