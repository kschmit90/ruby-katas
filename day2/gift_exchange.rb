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
  # def self.split_members_hash(split_names)
  #  members_hash = {}
    
  #  split_names.each do |arr|
  #   members_hash[arr[0]] = arr[1]
  # end
  #  members_hash
  # end
  
  # Takes Array of Arrays of split names and sorts them.
  #
  # Returns sorted Array of Arrays
  # def self.sort_members(split_names)
  #  self.split_members(self.sample_members).sort { |x,y| y <=> x }
  # end
  
  # Takes last names of members being compared and checks similarity
  #
  # Returns true if names are the same, else false
  def self.same_last_name(name1, name2)
    if name1 == name2
      true
    else
      false
    end
  end
  
  # Takes an Array of Arrays of gift bearing members and assigns them to each other
  #
  # Returns hash of hashes
  def self.assign_gift_givers(members)
    i = 0
    gift_giver_hash = {}
    
    while i < (members.length - 1)
      member1 = members[i]
      member2 = members[i + 1]
      if self.same_last_name(member1[1], member2[1])
        i += 1
        next
      else
        gift_giver_hash[i] = {member1 => member2}
        i += 1
      end
      gift_giver_hash
    end
    gift_giver_hash
  end
end

puts GiftExchange.assign_gift_givers(GiftExchange.split_members(GiftExchange.sample_members))