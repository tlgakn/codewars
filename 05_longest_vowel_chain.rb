# 5.Longest vowel chain 
# https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/ruby
# 7 kyu
=begin

Longest vowelchain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

=end

# input: lowercase string
# output: integer
# rules:
  # only alphabetic characters
  # no spaces
  # vowels are any of aeiou

# algorithm: 
  # define a variable vowels with vowel letters in it as a string
  # separate the given example string to its letters, use chars or split('') and save the return value
  # define a count variable
  # iterate through the vowels string
    # and check if the string include the characters of array
    # every time the iteration evaluates to true
      # keep incrementing the count by 1
    # else push the counted number to a new collection (counted)
  # iterate through the counted values array and return the maximum number inside of it

# second time
  def solve(string)
    vowels = 'aeiou'
    string_of_chars = string.chars
    
    count = 0
    counted = []
    
    string_of_chars.each do |char|
      if vowels.include?(char)
        count += 1
      else
        count = 0
      end
      counted << [count]
    end
    counted.max.first
  end
    

  p solve("codewarriors") == 2
  p solve("suoidea") == 3
  p solve("iuuvgheaae") == 4
  p solve("ultrarevolutionariees") == 3
  p solve("strengthlessnesses") == 1
  p solve("cuboideonavicuare") == 2
  p solve("chrononhotonthuooaos") == 5
  p solve("iiihoovaeaaaoougjyaw") == 8
  