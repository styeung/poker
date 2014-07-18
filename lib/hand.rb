class Hand
  attr_accessor :cards
  attr_reader :hierarchy

  HIERARCHY = [:nothing, :pair, :two_pair, :three_of_a_kind, :straight, :flush, :full_house, :straight_flush]

  def initialize
    @cards = []
    @hierarchy = :nothing
  end

  def beats?

  end

  def hierarchy

  end

  def sort_by_most_common

  end

end