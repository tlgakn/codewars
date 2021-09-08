=begin
13. Kebabize
https://www.codewars.com/kata/57f8ff867a28db569e000c4a/train/ruby
6 kyu

Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters

=end

# input: string
# output: string
# rules: 
# the returned string should only contain lowercase letters

# algorithm:
# split the string where it starts with uppercase letters
    # until the letter is uppercase, push the lowercase letters and join them 
    # 

# delete if there are any non alpha characters
  
# join the string with dashes and return the result

# Regex Solution at Codewars
def kebabize(str)
  str.delete('^A-Za-z').split(/(?=[A-Z])/).join('-').downcase
end

# my solution first time
# def kebabize(string)
#   new_string = ''
#   string.chars.map do |char|
#     if char =~ /\d/
#       next
#     elsif char.upcase == char
#       new_string << '-'
#       new_string << char.downcase
#     else
#       new_string << char
#     end
#   end
  
#   if new_string.start_with?('-')
#     new_string.delete('-')
#   else
#     new_string
#   end
# end


p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
