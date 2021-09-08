=begin
https://www.codewars.com/kata/57eb8fcdf670e99d9b000272

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.
=end

=begin

input: string of words
output: highest scoring word
rules:  - scoring is alphabetically, meaning that a = 1, b = 2, etc...
        - if two words score the same, return the word that appears earliest in the original string.
        
algorithm:
+ create a score table to look up meaning that which character has which point
  + created an array of characters to look up at the index values
  
+ split the words to an array of words and save it as array_of_words
- how to calculate the score of a word?
  - iterate through the array of words
     - iterate through array of characters
     

- return the highest scoring word 

- if there are two highest scoring words (same score) return the first appearing string from the original string

=end

def high(sentence)
  alpha_score = ("a".."z").zip(1..26).to_h
  arr_sentence = sentence.split
  
  score_array = []
  
  arr_sentence.each do |word|
    score = 0
    word.chars.each do |char|
      score += alpha_score[char]
    end
    score_array << score
  end
  score_of_words = arr_sentence.zip(score_array).to_h
  
  result = score_of_words.max_by {|k,v| v}
  result.first
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'