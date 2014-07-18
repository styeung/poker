class Player

  attr_accessor :hand, :bankroll, :name, :folded

  def initialize(bankroll = 100000, name = "Texas Jack")
    @hand = []
    @bankroll = bankroll
    @name = name
    @folded = false
  end

  def bet(n)
    @bankroll -= n
  end

  def raise(n)

  end

  def fold
    @folded = true
  end

  def exchange_cards(card_array)
  end
end