Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                    :name => "add_additional_info_on_product_admin",
                    :insert_after => "[data-hook='admin_product_form_right']",
                    :partial => "spree/shared/add_additional_info_on_product",
                    :disabled => false)
