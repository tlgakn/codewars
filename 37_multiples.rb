=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.


input: integer
output: integer
rules: - if the number is a multiple of both 3 and 5, only count in once

algorithm:
1- find the numbers that are evenly divisible by 3 or 5, given below the number in the example given
  + initialize an empty array to save the numbers which are evenly divisible by (3 or 5)
  + push the evenly divisible numbers to this array
  
2- if the number is a multiple of both 3 and 5, only count in once 
3- sum up all the numbers


=end

def solution(number)
  multiples = []
  (number-1).downto(1) do |num| 
    if num % 3 == 0 || num % 5 == 0
      multiples << num
    end
  end
  multiples.sum
end



p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168