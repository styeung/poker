require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  context "#draw(n)" do
    it "should return 5 cards from the top of the deck" do
      expect(deck.draw(5).length).to eq(5)
    end

  end

end