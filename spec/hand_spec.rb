require 'hand'
require 'card'

describe Hand do

  context "#beats?" do
    let(:card1) {double(:card, {:suit => :spades, :value => :ten})}
    let(:card2) {double(:card, {:suit => :hearts, :value => :ten})}
    let(:card3) {double(:card, {:suit => :diamonds, :value => :ten})}
    let(:card4) {double(:card, {:suit => :spades, :value => :two})}
    let(:card5) {double(:card, {:suit => :hearts, :value => :two})}
    let(:card6) {double(:card, {:suit => :spades, :value => :five})}
    let(:card7) {double(:card, {:suit => :clubs, :value => :six})}
    let(:card8) {double(:card, {:suit => :diamonds, :value => :seven})}
    let(:card9) {double(:card, {:suit => :clubs, :value => :eight})}
    let(:card10) {double(:card, {:suit => :spades, :value => :nine})}

    let(:hand1) {Hand.new([card1, card2, card3, card4, card5])}
    let(:hand2) {Hand.new([card6, card7, card8, card9, card10])}

    it "should have a full house beat a straight" do
      expect(hand1.beats?(hand2)).to eq(true)
      hand1.cards.each { |card| p "#{card} is #{card.suit}" }
    end

    it "should have a KKQQ4 beat a KK33A" do
    end

  end

end