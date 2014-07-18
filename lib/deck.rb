class Deck

  attr_accessor :cards

  def initialize
    @cards = new_deck_of_cards
    self.shuffle
  end

  def new_deck_of_cards
    output_deck = []
    Card::SUIT_STRINGS.each do |suit|
      Card::VALUE_STRINGS.each do |value|
        output_deck << Card.new(suit, value)
      end
    end

    output_deck
  end

  def shuffle
    @cards.shuffle!
  end

  def draw(n)
    drawn_cards = []

    n.times { drawn_cards << @cards.pop }

    drawn_cards
  end

  def is_empty?

  end

end