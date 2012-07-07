require 'spec_helper'

describe "spree_invoices/new" do
  before(:each) do
    assign(:invoice, stub_model(Spree::Invoice,
      :company => "MyString",
      :amount => 1
    ).as_new_record)
  end

  it "renders new invoice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spree_invoices_path, :method => "post" do
      assert_select "input#invoice_company", :name => "invoice[company]"
      assert_select "input#invoice_amount", :name => "invoice[amount]"
    end
  end
end
