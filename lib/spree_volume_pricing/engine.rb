module SpreeVolumePricing
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_volume_pricing'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer 'spree_volume_pricing.environment', before: :load_config_initializers do |_app|
      SpreeVolumePricing::Config = SpreeVolumePricing::Configuration.new
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
