# 8.Repeated Substring
# https://www.codewars.com/kata/5491689aff74b9b292000334/train/ruby
# 6 kyu
=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string

s = "ababab"
the answer is

["ab", 3]
Example #2:

for string

s = "abcde"
the answer is

because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.
=end

# input: string
# output: array, one string and one integer
# rules: 
  # lowercase latin letters
# algorithm:
  # define substrings method to get all the possible string combinations
  # iterate through substrings array and select only that meets the conditon key*value == string
  # select the greatest value

  def substring(string)
    substrings = []
    
    0.upto(string.length - 1) do |index|
      1.upto(string.length - index) do |length|
        substrings << string[index, length]
      end
    end
    substrings
  end
  
  
  def f(string)
    substrings = substring(string)
    
    hash = Hash.new(0)
    
    substrings.each {|str| hash[str] += 1 }
    
    selected = hash.select { |key, value| key * value == string }
    max = selected.max_by { |k,v| v}
  end
  
  p f("ababab") == ["ab", 3]
  p f("abcde") == ["abcde", 1]
  