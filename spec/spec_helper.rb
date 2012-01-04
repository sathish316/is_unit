require 'bundler/setup'
require 'rspec/mocks'
require 'is_unit'

RSpec.configure do |config|
  config.mock_with :mocha
end

#TODO: Load using paths
def all_classes
  [Game, Player, Dice]
end
