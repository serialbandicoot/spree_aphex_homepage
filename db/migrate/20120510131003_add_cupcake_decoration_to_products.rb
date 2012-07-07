class AddCupcakeDecorationToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :cupcake_decoration, :boolean, :default => false
  end
end
