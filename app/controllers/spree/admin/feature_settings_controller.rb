module Spree
  module Admin
    class FeatureSettingsController < BaseController
      def update
        Spree::Feature::Config.set(params[:preferences])

        respond_to do |format|
          format.html {
            redirect_to admin_feature_settings_path
          }
        end
      end
    end
  end
end




