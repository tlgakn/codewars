=begin
43. Transform To Prime
https://www.codewars.com/kata/5a946d9fba1bb5135100007c/train/ruby
6 kyu
Task :
Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of the list should equal the closest prime number .

Notes
List size is at least 2 .

List's numbers will only have positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make *the sum of the List** equal the closest prime number (7)* .
2-  minimumNumber ({2,12,8,4,6}) ==> return (5)
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which will make *the sum of the List** equal the closest prime number (37)* .
3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) , which will make *the sum of the List** equal the closest prime number (191)* .

# Questions:
- What is a prime number?
==> a prime number is a number which only can be evenly divided by 1 and by itself

Algoritm:
- defining prime numbers
  - create a helper method is_prime?
    - divisor is assigned to 1, skipping that each number is evenly divisible by 1
    - divisor == 2 ? then it is true
    - define a variable divisor and increment it each time if the number is evenly divisible by another number
    - if divisor == 2 then it is true, the number is prime
    - else it is not prime it so it false
  
- finding the nearest prime number to the sum of the array
  - sum up the array
  - check if the number is a prime number
  - if not, increment it until it is a prime number
  

- the difference between the closest prime num and the sum of array is the answer


=end

def is_prime?(number)
  divisor = 1
  
  2.upto(number) do |num|
    if number % num == 0
      divisor += 1
    end
  end
  divisor == 2
end


def minimum_number(array)
  sum = array.sum
  until is_prime?(sum) == true
    sum += 1
  end
  sum - (array.sum)
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
