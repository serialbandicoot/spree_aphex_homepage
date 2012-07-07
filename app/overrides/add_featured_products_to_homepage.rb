Deface::Override.new(:virtual_path => "spree/home/index",
                    :name => "add_featured_products_to_homepage",
                    :insert_before => "[data-hook='homepage_products']",
                    :partial => 'spree/shared/featured_products',
                    :disabled => false)

