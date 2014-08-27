require_relative '../gift_exchange.rb'

describe GiftExchange do

  it 'should return an array of names' do
    expect(GiftExchange.sample_members).to eql(["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"])
  end
  
  it 'should return an array of arrays' do
    expect(GiftExchange.split_members(GiftExchange.sample_members)[0].length).to eql(2)
  end
  
  it 'it should return a hash of first/last name pairs' do
  end
  
  it 'should ensure all members are assigned' do
  end
  
  it 'should properly determine a members last name' do
  end

end