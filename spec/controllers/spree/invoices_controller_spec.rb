require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Spree::InvoicesController do

  # This should return the minimal set of attributes required to create a valid
  # Spree::Invoice. As you add validations to Spree::Invoice, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Spree::InvoicesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all spree_invoices as @spree_invoices" do
      invoice = Spree::Invoice.create! valid_attributes
      get :index, {}, valid_session
      assigns(:spree_invoices).should eq([invoice])
    end
  end

  describe "GET show" do
    it "assigns the requested invoice as @invoice" do
      invoice = Spree::Invoice.create! valid_attributes
      get :show, {:id => invoice.to_param}, valid_session
      assigns(:invoice).should eq(invoice)
    end
  end

  describe "GET new" do
    it "assigns a new invoice as @invoice" do
      get :new, {}, valid_session
      assigns(:invoice).should be_a_new(Spree::Invoice)
    end
  end

  describe "GET edit" do
    it "assigns the requested invoice as @invoice" do
      invoice = Spree::Invoice.create! valid_attributes
      get :edit, {:id => invoice.to_param}, valid_session
      assigns(:invoice).should eq(invoice)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Spree::Invoice" do
        expect {
          post :create, {:invoice => valid_attributes}, valid_session
        }.to change(Spree::Invoice, :count).by(1)
      end

      it "assigns a newly created invoice as @invoice" do
        post :create, {:invoice => valid_attributes}, valid_session
        assigns(:invoice).should be_a(Spree::Invoice)
        assigns(:invoice).should be_persisted
      end

      it "redirects to the created invoice" do
        post :create, {:invoice => valid_attributes}, valid_session
        response.should redirect_to(Spree::Invoice.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved invoice as @invoice" do
        # Trigger the behavior that occurs when invalid params are submitted
        Spree::Invoice.any_instance.stub(:save).and_return(false)
        post :create, {:invoice => {}}, valid_session
        assigns(:invoice).should be_a_new(Spree::Invoice)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Spree::Invoice.any_instance.stub(:save).and_return(false)
        post :create, {:invoice => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested invoice" do
        invoice = Spree::Invoice.create! valid_attributes
        # Assuming there are no other spree_invoices in the database, this
        # specifies that the Spree::Invoice created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Spree::Invoice.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => invoice.to_param, :invoice => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested invoice as @invoice" do
        invoice = Spree::Invoice.create! valid_attributes
        put :update, {:id => invoice.to_param, :invoice => valid_attributes}, valid_session
        assigns(:invoice).should eq(invoice)
      end

      it "redirects to the invoice" do
        invoice = Spree::Invoice.create! valid_attributes
        put :update, {:id => invoice.to_param, :invoice => valid_attributes}, valid_session
        response.should redirect_to(invoice)
      end
    end

    describe "with invalid params" do
      it "assigns the invoice as @invoice" do
        invoice = Spree::Invoice.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Spree::Invoice.any_instance.stub(:save).and_return(false)
        put :update, {:id => invoice.to_param, :invoice => {}}, valid_session
        assigns(:invoice).should eq(invoice)
      end

      it "re-renders the 'edit' template" do
        invoice = Spree::Invoice.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Spree::Invoice.any_instance.stub(:save).and_return(false)
        put :update, {:id => invoice.to_param, :invoice => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested invoice" do
      invoice = Spree::Invoice.create! valid_attributes
      expect {
        delete :destroy, {:id => invoice.to_param}, valid_session
      }.to change(Spree::Invoice, :count).by(-1)
    end

    it "redirects to the spree_invoices list" do
      invoice = Spree::Invoice.create! valid_attributes
      delete :destroy, {:id => invoice.to_param}, valid_session
      response.should redirect_to(spree_invoices_url)
    end
  end

end
