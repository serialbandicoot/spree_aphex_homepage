class Spree::HomeController < Spree::BaseController
  def index
    @products = Spree::Product.all
  end
end