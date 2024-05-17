module SpreeVolumePricing
  class Configuration < Spree::Preferences::Configuration

   # Some example preferences are shown below, for more information visit:
   # https://dev-docs.spreecommerce.org/internals/preferences

   preference :enabled, :boolean, default: true
   preference :use_master_variant_volume_pricing, :boolean, default: false
   preference :volume_pricing_role, :string, default: 'wholesale'
   preference :volume_pricing_role_dropship, :string, default: 'dropship'
  end
end
