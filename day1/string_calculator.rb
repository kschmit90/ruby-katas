# StringCalculator Module
#
# Module takes a string of integers, separates them and sums them together.
module StringCalculator
  def self.add(string)
    split_string = split_string(string)
    int_array = str_arr_to_int_arr(split_string)

    int_array.each do |x|
      greater_than_1000(x)
      negative_number(x)
    end

    summed_string = array_sum_method(int_array)
    summed_string
  end

  def self.greater_than_1000(num)
    if num > 1000
      num == 0
    else
      num
    end
  end

  def self.negative_number(num)
    if num < 0
      raise '#{num} is not valid.'
    else
      num
    end
  end
  
  def self.split_string(string)
    if string.include? ','
      string.split(%r{,\s*})
      
    else
      string.split(/[\n]+/)
      
    end
  end
  
  def self.length_one_or_less(string)
    if string.length <= 1
      string.to_i
    else
      add(string)
    end
  end
  
  def self.str_arr_to_int_arr(array)
    int_array = []
    
    array.each do |x|
      int_array << x.to_i
    end
    
    int_array
  end
    
  def self.array_sum_method(array)
    sum = 0
    
    array.each { |x| sum = x + sum if x > 0 && x < 1000 }
        
    sum
  end
end
