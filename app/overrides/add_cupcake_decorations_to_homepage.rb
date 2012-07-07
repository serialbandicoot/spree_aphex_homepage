Deface::Override.new(:virtual_path => "spree/home/index",
                    :name => "add_cupcake_decorations_to_homepage",
                    :insert_top => "[data-hook='homepage_products']",
                    :partial => 'spree/shared/cupcake_decorations',
                    :disabled => false)