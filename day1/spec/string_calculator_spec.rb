require_relative './spec_helper'
require_relative '../string_calculator.rb'

describe StringCalculator do

  it 'should return 0 if the string is empty' do
    s = ""
    expect(StringCalculator.add(s)).to  eql(0)
  end
  
  it 'should return the the number as an integer if only one number is in the string' do
    s = "4"
    expect(StringCalculator.add(s)).to eql(4)
  end
  
  it 'should return an array of strings' do
    s = "3, 4"
    expect(StringCalculator.split_string(s)).to eql(["3", "4"])
  end
  
  it 'should differentiate between strings with commas and strings with new line characters' do
    s = "3\n4\n5"
    expect(StringCalculator.split_string(s)).to eql(["3", "4", "5"])
  end
  
  it 'should convert an array of strings to an array of integers' do
    a = ["3", "4"]
    expect(StringCalculator.str_arr_to_int_arr(a)).to eql([3, 4])
  end
  
  it 'should sum the string of numbers' do
    string = "3, 4"
    expect(StringCalculator.add(string)).to eql(7)
  end
  
  it 'should sum the string of numbers with new line breaks' do
    string = "3\n4\n5"
    expect(StringCalculator.add(string)).to eql(12)
  end
  
end