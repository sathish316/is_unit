require 'spec_helper'
require 'model/game'
require 'model/player'
require 'model/dice'

describe Dice do
  it "should throw random positive number" do
    dice = Dice.new
    dice.throw_number.should > 0
  end

  it "should throw random positive number less than 6" do
    dice = Dice.new
    dice.throw_number.should <= 6
  end
end