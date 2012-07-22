# encoding: utf-8
class AddAdditionalInfoToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :spree_additional_info, :string
  end
end
