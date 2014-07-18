class Game
  
  attr_accessor :current_bet

  def initialize(players = [Player.new(self), Player.new(self)])
    @players = players
    @pot = 0
    @ante_value = 100
    @current_bet = 0
  end
  
  def play
    
  end
end