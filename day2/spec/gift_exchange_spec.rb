require_relative '../gift_exchange.rb'

describe GiftExchange do

  it 'should return an array of names' do
    expect(GiftExchance.sample_members).to eql(["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"])
  end
  
  it 'should return a hash of assigned members' do
    members = ["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]

    expect(GiftExchange.assign_gift_givers(members).class).to eql(Hash)
  end
  
  it 'should only assign two members with different last names' do
  end
  
  it 'should ensure all members are assigned' do
  end
  
  it 'should properly determine a members last name' do
  end

end