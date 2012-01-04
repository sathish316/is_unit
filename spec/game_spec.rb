require 'spec_helper'

describe Game do
  include IsUnit
  
  describe "unit tests" do
    is_unit(Game, all_classes) do
      describe "by stubbing dependencies" do
        it "should choose winner" do
          player_1 = Player.new(Dice.new)
          player_2 = Player.new(Dice.new)
          game = Game.new(player_1, player_2)

          player_1.expects(:play).returns(5)
          player_2.expects(:play).returns(3)

          game.play
          
          game.winner.should == player_1
        end
      end

      describe "with dependencies error" do
        it "should choose winner" do
          begin
            player_1 = Player.new(Dice.new)
            player_2 = Player.new(Dice.new)
            
            game = Game.new(player_1, player_2)

            game.play
          
            game.winner.should_not be_nil
          rescue => e
            e.class.should == NotAUnitTestError
          end
        end
      end
    end
  end
end

describe Game do
  describe "integration tests" do
    it "should choose winner" do
      player_1 = Player.new(Dice.new)
      player_2 = Player.new(Dice.new)
      
      game = Game.new(player_1, player_2)

      game.play
    
      game.winner.should_not be_nil
    end
  end
end