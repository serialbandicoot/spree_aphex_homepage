Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                    :name => "ext_add_featured_on_product_admin",
                    :insert_after => "[data-hook='admin_product_form_right']",
                    :partial => "spree/shared/ext_add_featured_on_product_admin",
                    :disabled => false)