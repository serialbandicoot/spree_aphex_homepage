Spree::Product.class_eval do
  scope :on_homepage
  attr_accessible :brand, :show_on_homepage, :feature_product, :spree_additional_info, :cupcake_decoration
end