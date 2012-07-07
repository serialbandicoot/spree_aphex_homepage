module Spree::Feature
end

module SpreeAphexHomepage
  class Engine < Rails::Engine
    engine_name 'spree_aphex_homepage'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.feature_configuration.preferences", :after => "spree.environment" do |app|
      Spree::Feature::Config = Spree::FeatureConfiguration.new
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
