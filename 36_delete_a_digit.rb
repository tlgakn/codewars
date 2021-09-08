=begin
36. Delete a Digit
https://www.codewars.com/kata/5894318275f2c75695000146/train/ruby
6 kyu
Task
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

=end

# input: integer
# output: integer

def delete_digit(number)
  deleted = number.digits.reverse.combination(number.digits.length - 1).to_a
  int_to_string = deleted.map do |sub_arr|
    sub_arr.map do |num|
      num.to_s
      sub_arr.join
    end
  end
  
  int_to_string.flatten.sort_by {|a| a.to_i}.last.to_i
end


p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
