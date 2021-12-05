RSpec.describe Array do
  subject(:sally) do
    [ 1, 2 ]
  end

  it 'has two key value pairs' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'has sally equal to the original array' do
    expect(sally.length).to eq(2)
  end
end
