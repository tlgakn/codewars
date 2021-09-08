=begin
44. Counting Duplicates 
https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby
6 kyu

Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice


input: string
output: integer
rules: - the characters are case-insensitive 
       - if it's an empty string output will be zero
       - if there is no character more than one, then output will be 0
       
algorithm
count how many times a character or a numeric digit occurs more than once in the input string

1- Finding the characters which occurs more than once
  - convert the string to array of characters
  - initialize an empty array to save the characters that occur more than once
  - iterate through the array_of_chars
  - count if there are any element that occurs more than once 
      - if yes put it into new collection
  
  
2- Counting how many distinct case-insensitive alphaetic characters are occured more than once


=end

def duplicate_count(string)
  chars_arr = string.chars
  downcased = chars_arr.map(&:downcase)
  more_than_once = downcased.select {|el| downcased.count(el) > 1}
  more_than_once.uniq.count
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2