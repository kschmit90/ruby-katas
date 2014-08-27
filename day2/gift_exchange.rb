require 'pry'
# Gift Exchange Module
#
# Used to split up members of a gift exchange and assign them to each other for gift giving.
module GiftExchange
  
  # Sample list of members for gift exchange.
  #
  # Returns an Array of member names.
  def self.sample_members
    ["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
  end
  
  # Split Members into first and last names
  #
  # members - Array of members
  #
  # Returns an Array of Arrays containing first and last names.
  def self.split_members(members)
    split_names = []
    
    members.each do |x|
      split_names << x.split(' ')
    end
    split_names
  end
    
  # Take split member names as an Array of Arrays and associate them via key value in Hash
  #
  # split_names - Array of Arrays of first and last names
  #
  # Returns a Hash of first name keys and last name values 
  def self.split_members_hash(split_names)
    members_hash = {}
    
    split_names.each do |arr|
      members_hash[arr[0]] = arr[1]
    end
    members_hash
  end
    
  def self.assign_gift_givers(members)
      
  end
end

binding.pry