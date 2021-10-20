RSpec.describe 'Card' do
  it 'has a type' do
    card = Card.new('Ace of Spades')
    expect(card.type).to eq('Ace of Spades')
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
