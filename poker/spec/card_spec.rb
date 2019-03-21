require 'rspec'
require 'card' 
system("clear")

describe Card do

  describe '#initialize' do
    let(:card) { Card.new(:K, 13, "Hearts")}
    it 'should take in and assign a type, value, and suit.' do
      expect(:card).to_not raise_error
    end
  end


end