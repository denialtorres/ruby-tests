RSpec.describe Array do
  # Hash.new

  it 'should start off empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
    subject.push(1)
    expect(subject.length).to eq(1)
  end
end
