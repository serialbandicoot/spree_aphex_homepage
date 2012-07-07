class Spree::FeatureConfiguration < Spree::Preferences::Configuration
  # this keys works for localhost
  preference :feature_content, :string, :default => 'Place holder for adding feature description'
end
