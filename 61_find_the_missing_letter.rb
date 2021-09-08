=begin
https://www.codewars.com/kata/5839edaa6754d6fec10000a2
6 kyu
#Find the missing letter

Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

Example:

['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'

["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"
(Use the English alphabet with 26 letters!)

=end


# rules: # the length of the array will always be at least 2
        # the array will contain letters in only one case

# algorithm:
# initialize lowercase und uppercase letters as alphabet variable
# decide which letters to use, is the given array lowercase letters or uppercase letters?
  # if array.first.downcase == array.first
    # then choose lowercase alphabet
  # else
    # choose uppercase alphabet
# initialize a variable to array.size + 1 (slice_length)
# initialize a starting_letter
  # find the index of the starting_letter
  # starting letter is the first letter from the given array
# beginning of starting_letter I have to slice the letters from alphabet in slice_length
# save the sliced letters in a new array named sliced_array
# compare the sliced_array to the given array
  # flatten two arrays
  # count which element is only once there
  # it is the answer
# return the answer


def find_missing_letter(array)
  lowercase_alpha = ("a".."z").to_a
  uppercase_alpha = ("A".."Z").to_a
  
  slice_length = (array.size + 1)
  starting_letter = array.first
  
  if array.first.downcase == array.first
    index_of_starting_letter = lowercase_alpha.index(starting_letter)
    sliced_array = lowercase_alpha[index_of_starting_letter,slice_length]
  else
    index_of_starting_letter = uppercase_alpha.index(starting_letter)
    sliced_array = uppercase_alpha[index_of_starting_letter,slice_length]
  end
  
  combined = sliced_array + array
  combined.select {|letter| combined.count(letter) == 1}.join
end
  
  
  
p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"
  

# second way
def find_missing_letter(arr)
  ((arr.first..arr.last).to_a - arr).first
end
