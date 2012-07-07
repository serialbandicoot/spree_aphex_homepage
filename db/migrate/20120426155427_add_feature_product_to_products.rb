class AddFeatureProductToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :feature_product, :boolean, :default => false
  end
end
