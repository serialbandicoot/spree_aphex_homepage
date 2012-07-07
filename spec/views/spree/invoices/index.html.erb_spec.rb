require 'spec_helper'

describe "spree_invoices/index" do
  before(:each) do
    assign(:spree_invoices, [
      stub_model(Spree::Invoice,
        :company => "Company",
        :amount => 1
      ),
      stub_model(Spree::Invoice,
        :company => "Company",
        :amount => 1
      )
    ])
  end

  it "renders a list of spree_invoices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
