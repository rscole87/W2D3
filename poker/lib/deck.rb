require_relative 'card'

class Deck
  
  CARDS = {
    :A => 14,
    :K => 13,
    :Q => 12,
    :J => 11,
    10 => 10,
    9 => 9,
    8 => 8,
    7 => 7,
    6 => 6,
    5 => 5,
    4 => 4,
    3 => 3,
    2 => 2
  }.freeze

  attr_reader :current_deck

  SUITS = ["Hearts", "Diamonds", "Spades", "Clubs"].freeze

  def initialize
    create_deck
  end


  def create_deck
    current_deck = []

    SUITS.each do |suit|
      CARDS.each do |type, value|
        current_deck << Card.new(type, value, suit)
      end
    end
    
    @current_deck = current_deck
  end
  
end