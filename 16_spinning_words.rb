=begin
16. Stop gninnipS My sdroW!
https://www.codewars.com/kata/5264d2b162488dc400000001
6 kyu
Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

=end

# input: string
# output: string
# rules: 
  # return the same string but with all five or more letter words reversed
  # strings passed in will consist of only letters and spaces

# algorithm:
  # split the words
  # iterate through the splitted words and check which words have more than or equal to 5 chars
    # the words they have have more than or equal to 5 chars
      # reverse them
    # else 
      # return the word
  # save the return value after the iteration
  # join the words in a sentence


# my solution
def spinWords(sentence)
  spinned = sentence.split.map do |char|
    if char.size >= 5
      char.reverse
    else
      char
    end
  end
  spinned.join(" ")
end

# with regex, codewars solution
def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end



p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"
p spinWords("test") == "test"
