=begin
27. Exponent method
https://www.codewars.com/kata/5251f63bdc71af49250002d8
5 kyu
=begin

Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.


=end

# multiplying the number exponent times
  # exponent times
  # multiply the number with itself
  # and multiply each time the result with the number


# my solution
def power(number, exponent)
  return nil if exponent < 0
  
  result = 1
  exponent.times do |num|
    num = number
    result *= number
  end
  result
end

# codewars student solution
def power(base, exponent)
  exponent.times.inject(1){ |product| product * base } unless exponent < 0
end


p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
