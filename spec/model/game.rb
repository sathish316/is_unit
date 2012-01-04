class Game
  attr_reader :winner
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end
  
  def play
    points_1 = @player_1.play
    points_2 = @player_2.play
    @winner = points_1 >= points_2 ? @player_1 : @player_2
  end
  
end