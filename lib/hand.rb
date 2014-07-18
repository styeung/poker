require_relative 'deck'

class Hand
  attr_accessor :cards
  attr_reader :hierarchy

  HIERARCHY = [:nothing, :pair, :two_pair, :three_of_a_kind, :straight, :flush, :full_house, :straight_flush]

  def initialize(cards = Deck.new.take(5))
    @cards = cards
    @hierarchy = :nothing

  end

  def beats?(other_hand)
    if self.cards[0].value > other_hand.cards[0].value
      return true
    else
      return false
    end
  end

  def hierarchy

  end

  def sort_by_most_common
    frequency = Hash.new(0)

    @cards.each do |card|
      frequency[card.value] += 1
    end
    p frequency

    @cards.sort! { |card1, card2| frequency[card1.value] <=> frequency[card2.value] }

    @cards
  end

end