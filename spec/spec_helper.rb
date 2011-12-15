require 'simplecov'
SimpleCov.start

require 'rspec'
require 'parsilicious'

RSpec.configure do |config|
  config.color_enabled = true
  config.mock_framework = :mocha
end


