# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_volume_pricing/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_volume_pricing'
  s.version     = SpreeVolumePricing.version
  s.summary     = 'Product Volume pricing'
  s.description = ''
  s.required_ruby_version = '>= 2.5'

  s.author    = 'Viraj Chaudhari'
  s.email     = 'viraj@thingbits.net'
  s.homepage  = 'https://github.com/thingbitse/spree_volume_pricing'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree', '~> 4.6'
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'spree_dev_tools'
end
