module StringCalculator
  def self.add(string)
    if string.length <= 1
      
      string.to_i
      
    elsif string.length > 1 
      split_string = self.split_string(string)
      
      int_array = self.str_arr_to_int_arr(split_string)
      
      summed_string = self.array_sum_method(int_array)
      
      summed_string
    else
      "error"
    end
  end
  
  def self.split_string(string)
    if string.include? ','
      string.split(%r{,\s*})
      
    else
      string.split(/[\n]+/)
      
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
    
    array.each do |x|
      sum = x + sum
    end
    
    sum
  end
end

