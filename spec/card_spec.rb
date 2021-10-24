class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card){ Card.new('Ace', 'Spades') }

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end

# Rspec.describe "math calculations" do
#   it 'does basic math' do
#     expect(1+1).to eq(2)
#     expect(1*1).to eq(1)
#     expect(1/1).to eq(1)
#     expect(1-1).to eq(0)
#   end
# end
