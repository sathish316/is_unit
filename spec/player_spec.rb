require 'spec_helper'

describe Player do
  include IsUnit

  is_unit(Player, all_classes) do
    describe "by stubbing dependencies" do
      it "should play by throwing a number on dice" do
        dice = Dice.new
        player = Player.new(dice)
            
        dice.expects(:throw_number).returns(5)
            
        player.play.should == 5
      end
    end

    describe "with dependencies error" do
      it "should play by throwing a number on dice" do
        begin
          dice = Dice.new
          player = Player.new(dice)
  
          number = player.play
          number.should > 0
          number.should <= 6
        rescue => e
          e.class.should == NotAUnitTestError
        end
      end
    end
  end
end

describe Player do
  describe "integration test" do
    it "should play by throwing a number on dice" do
      dice = Dice.new
      player = Player.new(dice)
      
      number = player.play
      number.should > 0
      number.should <= 6
    end
  end
end