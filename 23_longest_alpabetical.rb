=begin
23. Longest alphabetical substring
https://www.codewars.com/kata/5a7f58c00025e917f30000f1
6 kyu

Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

=end

# input: string
# output: string
# rules: 
# the input will only consist of lowercase characters
# and will be at least one letter long
# If there are multiple solutions, return the one that appears first.

# algorithm:
# convert the string to an array of characters
# slice the string when a.ord is not less than b.ord
# save the sliced array in a new collection
# check for the longest one
  # iterate through the sliced collection 
  # check the sub_arr which has the biggest size
    # 
  # join the biggest size sub_arr
# and return it

# second time
def longest(string)
  sliced = string.chars.slice_when {|a,b| a > b}.to_a
  longest = sliced.max_by {|sub_arr| sub_arr.length}.join
end


p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
