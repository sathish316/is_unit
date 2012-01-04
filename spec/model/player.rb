class Player
  def initialize(dice)
    @dice = dice
  end
  
  def play
    @dice.throw_number
  end
end