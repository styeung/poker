require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  context "Test #new_deck method" do
    it "should have 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
  end

end