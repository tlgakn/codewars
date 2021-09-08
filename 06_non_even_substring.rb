# 6.Non-even substrings
# https://www.codewars.com/kata/59da47fa27ee00a8b90000b4/train/ruby
# 6 kyu

=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.
=end

# input: number string
# output: integer
# algorithm:
  # using the substring method, get all the possible combinations and save the return value
  # iterate through the saved variable
    # and select the odd numbers inside of it
    # save the number
# return the saved number


def substrings(string_int)
  substrings = []
  
  0.upto(string_int.length - 1) do |index|
    1.upto(string_int.length - index) do |length|
      substrings << string_int[index, length]
    end
  end
  substrings
end

def solve(string_int)
  substrings = substrings(string_int)
  
  odd_numbers = substrings.count do |str_num|
    str_num.to_i.odd?
  end
end



p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
