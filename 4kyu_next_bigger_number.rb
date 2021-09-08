# https://www.codewars.com/kata/55983863da40caa2c900004e/train/ruby

# Create a function that takes a positive integer and returns the next bigger number that can be formed by rearranging its digits. For example:

# If the digits can't be rearranged to form a bigger number, return -1

# input: positive integer
# output: positive integer or -1
# rules: 
# if there is no next bigger number, return -1

# algorithm:
# create each possibility that can be made by changing the order of the numbers and save it in number_possibilities
  # use permutation method to get all the possibilites
  # sort the numbers
# create a nested loop to find the next bigger number
  # iterate through the number_pos collection
    # push each sub_arr to current_num 
    # check if the current_num is greater than number
    # if yes break it and return current_num.to_i

# how to check if the given number is already the biggest number?
  # get the last sub_arr of number_pos
  # initialize last_num variable
  # loop through the sub_arr and push the numbers to num
  # check if the number == num
  # if yes return -1

#

# my solution -- works for given test cases but did not pass codewars examples
# probably because of permutation method
def next_bigger(number)
  number_pos = number.to_s.chars.permutation(number.to_s.length).to_a.sort
  current_num = ""
  last_num = ""
  
  # for the case if the given number is already the biggest number
  index = 0
  loop do 
    break if index == number_pos.last.length
    last_num << number_pos.last[index]
    index += 1
  end
  
  return -1 if last_num.to_i == number
  
  # finding the bigger next number
  number_pos.each_with_index do |sub_arr, index|
    until sub_arr.empty? 
      current_num << sub_arr.shift
    end
    break if current_num.to_i > number
    current_num.clear
  end
  current_num.to_i
end



# James' solution
# def next_bigger(integer)
#   max_n = integer.to_s.chars.sort.reverse.join.to_i
#   return -1 if integer == max_n  
  
#   current_number = integer # 2017
#   loop do
#     current_number += 1
#     binding.pry
#     if current_number.digits.sort == integer.digits.sort
#     binding.pry
#       return current_number
#     end
#   end
  
#   current_number
# end
  
  p next_bigger(9) == -1
  p next_bigger(111) == -1
  p  next_bigger(531) == -1
  p next_bigger(12) == 21
  p next_bigger(513) == 531
  p next_bigger(2017) == 2071
  