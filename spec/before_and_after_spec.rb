RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before Context'
  end

  after(:context) do
    puts 'After Context'
  end

  before(:example) do
    puts 'before example'
  end

  after(:example) do
    puts 'after example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end




Stripe::SubscriptionSchedule.update(
  'sub_sched_1Jn89VBwJIs3MFAWHCwsiLfj',
  {
    phases: [
      {
        items: [
          { price:"price_1Jn89UBwJIs3MFAWI6UtqZck",quantity:4 },
          { price:"price_1Jn89UBwJIs3MFAWbqku77MX",quantity:1}
        ],
        start_date: 1641016800,
        end_date: 1654059600,
      },
      {
        items: [
          { price:"price_1JV1wUBwJIs3MFAWcSe8Dqio",quantity:4 },
          { price:"price_1Jn89UBwJIs3MFAWbqku77MX",quantity:1}
        ],
        start_date: 1654059600,
      },
    ],
  },
)
