# 38. String transformer
=begin

Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.


input: string
output: new string
rules: - Change case of every character, ie. lower case to upper case, upper   case to lower case.
       - You may assume the input only contain English alphabet and spaces.

algorithm:
1. reverse the order of the words
    - split the words to array of words and save it in a new variable
    - reverse the words
    - iterate through the reversed words
      - iterate through each char in the reversed words
     2. Deciding whether a char is upper case or lower case? (String#swapcase method)
        - if a char is upper case make it lower case
        - if a char is lower case make it upper case
3. push the mutated characters in to new variable
4. return the variable


=end
# my try
# def string_transformer(str)
#   arr_words = str.split(/ /).reverse
#   result = []
  
#   arr_words.map do |word|
#     word.swapcase
#   end
#   arr_words
# end


# codewars solution
def string_transformer(str)
  str.split(/\b/).reverse.map(&:swapcase).join
end



p string_transformer("Example Input") #== "iNPUT eXAMPLE"
p string_transformer("bLING hOTLINE  that  wHEN kNOW yOU")
p string_transformer(" g F e D c B a ")
