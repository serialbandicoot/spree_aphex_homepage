module SpreeAphexHomepage
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file "app/assets/javascripts/store/all.js", "//= require store/spree_aphex_homepage\n"
        #append_file "app/assets/javascripts/shared/all.js", "//= require shared/spree_lilyandmax_homepage\n"
        append_file "app/assets/javascripts/store/all.js", "//= require store/jquery.cycle.all\n"
      end

      def add_stylesheets
        inject_into_file "app/assets/stylesheets/store/all.css", " *= require store/spree_aphex_homepage\n", :before => /\*\//, :verbose => true
        #inject_into_file "app/assets/stylesheets/shared/all.css", " *= require shared/spree_lilyandmax_homepage\n", :before => /\*\//, :verbose => true
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_aphex_homepage'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'bundle exec rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end
    end
  end
end
