class Card
  attr_reader :type, :value, :suit

  def initialize(type, value, suit)
    @type = type
    @value = value
    @suit = suit
  end
end