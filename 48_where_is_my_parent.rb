=begin
48. Where is my parent!?(cry)

https://www.codewars.com/kata/58539230879867a8cd00011c/train/ruby

Where's my parent?
6 kyu
Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.
Task:
Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".


Problem: Sort the letters; beginning of uppercase letter followed by the same letter in lowercase 
        - uppercase letters are unique
        - sort it alpabetically
    
Algorithm:
- using slice_when method, slice the letters to a nested array, one with uppercase letters and the other with lowercase letters
- 

=end

# Rona's Solution
def find_children(string)
  alpha = string.chars.sort_by { |char| char.downcase }
  answer1 = alpha.slice_when { |a, b| a.upcase != b.upcase }.to_a
  answer2 = answer1.map { |subarray| subarray.sort }.join
end

# Codewars Student Solution
# def find_children(dancing_brigade)
#   dancing_brigade.chars.sort_by { |char| [char.downcase, char] }.join
# end


p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""
