#7 kyu

=begin
Find all pairs

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

# array.length      --> 9
# array.uniq.length --> 4

=end


# input: array of integers
# output: integer
# rules:   
  # Array can be empty or contain only one value; in this case return 0
  # If there are more pairs of a certain number, count each pair only once

# algorithm:
  # create an empty hash
  # iterate through the array and if it exists, push the number as value to the key, 
    # else assign the current number as the key
  # get the values of the hash and save the return value
  # delete the values sub-arr if there are less than 2 elements inside of each sub_arr
  # count the pairs
    # initialize a count_pairs variable
    # iterate through the pairs
    # divide the elements by two and add the value to count_pair


# second time
def initialize_count_hash(array)
  count = {}
  
  array.each do |num|
    if count.has_key?(num)
      count[num].push(num)
    else
      count[num] = [num]
    end
  end
  count
end


def pairs(array)
  count = initialize_count_hash(array)
  values = count.values
  pair_arrays = values.delete_if {|sub_arr| sub_arr.size < 2  }
  
  count_pairs = 0
  pair_arrays.each do |sub_arr|
    count_pairs += (sub_arr.size / 2)
  end
  count_pairs
end


# first time
# def pairs(array)
#   hash = Hash.new(0)
  
#   array.each do |num|
#     hash[num] += 1
#   end
  
#   array = []
  
#   hash.values.each do |el|
#     array << el/2
#   end
#   array.sum
# end


p pairs([1, 2, 5, 6, 5, 2]) #== 2
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
# p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
# p pairs([1000, 1000]) == 1
# p pairs([]) == 0
# p pairs([54]) == 0
