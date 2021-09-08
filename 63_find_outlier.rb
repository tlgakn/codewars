=begin
63. Find The Parity Outlier
(https://www.codewars.com/kata/5526fc09a1bbd946250002dc)
6 kyu
You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)
=end



# my solution
def find_outlier(integers)
  odd = 0
  even = 0
  
  integers.count do |num|
    if num.odd? 
      odd += 1
    else
      even += 1
    end
  end
  
  if odd == 1
    integers.select { |num| num.odd?}[0]
  else
    integers.select { |num| num.even?}[0]
  end
  
end


# best praciteces 
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end
