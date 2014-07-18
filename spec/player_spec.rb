require 'player'

describe Player do

  subject(:player) { Player.new }

  context "#bet(n)" do
    it "should decrease the bankroll by n dollars" do
      player.bet(1000)
      expect(player.bankroll).to eq(100000-1000)
    end
  end

  context "#fold" do
    it "should make the player fold" do
      player.fold
      expect(player.folded).to eq(true)
    end
  end

  context "#exchange_cards(card_array)" do
    let(:card1) {double(:card, {:suit => :spades, :value => :ten})}
    let(:card2) {double(:card, {:suit => :hearts, :value => :ten})}
    let(:card3) {double(:card, {:suit => :diamonds, :value => :ten})}
    let(:card4) {double(:card, {:suit => :spades, :value => :two})}
    let(:card5) {double(:card, {:suit => :hearts, :value => :two})}
    let(:hand1) {double(:hand, {:cards => [card1, card2, card3, card4, card5]})}
    it "should draw new cards" do
      player.hand = hand1
      p hand1
      p hand1.cards
      player.exchange_cards(player.hand.cards[0..2])
      expect(player.hand).to_not eq(hand1)
    end
  end


end