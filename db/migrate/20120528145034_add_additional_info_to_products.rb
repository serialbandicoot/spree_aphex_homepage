# encoding: utf-8
class AddAdditionalInfoToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :spree_additional_info, :string, :default => 'Free standard delivery for orders over £70. For orders under £70 standard delivery is £3.95.'
  end
end
