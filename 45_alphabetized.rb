=begin

45. Alphabetized
https://www.codewars.com/kata/5970df092ef474680a0000c9/train/ruby
6 kyu
The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing the english alphabet letters.

Example:

alphabetized("The Holy Bible") # "BbeehHilloTy"



input: string
output: string
rules:  
      explicit: -The input is restricted to contain no numerals and only words containing the english alphabet letters

algorithm:
sort the given letters in alphabetical case insensitive order. And remove also the whitesapce and punctuation.

1- clean the string from punctuation and empty space
  - String#squeeze method will be handy
2- itearate through the string and sort the string in case-insensitive order
  - downcase the string
  - convert the string to an array of characters
  - 
  
3- output the new ordered string

=end

def alphabetized(string)
  cleaned_arr = string.chars.select {|el| el.match?(/[a-zA-Z]/)}
  sorted = cleaned_arr.sort_by {|el| el.downcase}.join
end

p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
