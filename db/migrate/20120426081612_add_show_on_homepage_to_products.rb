class AddShowOnHomepageToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :show_on_homepage, :boolean, :default => false
  end
end
