require 'spec_helper'

describe "spree_invoices/show" do
  before(:each) do
    @invoice = assign(:invoice, stub_model(Spree::Invoice,
      :company => "Company",
      :amount => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
    rendered.should match(/1/)
  end
end
