# The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of the whole array. If the list is made up of only negative numbers, return 0 instead.

# Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.

=begin

-Questions
1- What is contiguous?
 - What is a subsequence?
 - How do we get the integer
  Example:  maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
          should be 6:  [4, -1, 2, 1]
2- how are the numbers selected, what is the algorithm behind it?


input: array
output: integer
rules: 
      explicit: - return 0 if there are only negative numbers in the collection
                - return 0 if the array is empty
      implicit: 


EXAMPLES:

[-2, 1, -3, 4, -1, 2, 1, -5, 4] == 6; 

a contiguous subsequence ==> [4, -1, 2, 1]

[-2, 1]
[-2, 1, -3]
[-2, 1, -3, 4]
[-2, 1, -3, 4, -1]
[-2, 1, -3, 4, -1, 2]
[-2, 1, -3, 4, -1, 2, 1 -5]
[-2, 1, -3, 4, -1, 2, 1 -5, 4]

[1]
[1, -3]
[1, -3, 4]
[1, -3, 4, -1]
[1, -3, 4, -1, 2]
[1, -3, 4, -1, 2, 1]


DATA STRUCTURE:
  - array



ALGORITHM
- find the maximum sum of a contiguous subsequence in an array

1- find the all possibilities of the contiguous subsequence numbers 
  - make an outer loop 
    - make an inner loop
      - start with 0 index 
      - each time slice it and push it to subsequence_numbers
      - increment the index by 1
      - stop the inner loop
    - increment the index by 1
    - stop the loop if index <= subsequence_numbers.length
    

2- save the return value  contiguous_subsequence variable (sub_arrays)

3- sum up all the sub_arrays select the greatest value


=end

#array = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

# 0,8
# 1,8
# 2,8

def find_the_contiguous_subsequence(array)
  contiguous_subsequence = []
  outer_counter = 0
  loop do
    inner_counter = 1
    
      loop do
        contiguous_subsequence << array[outer_counter, inner_counter]
        inner_counter  += 1
        break if inner_counter > array.length
      end
    
    outer_counter += 1
    break if outer_counter >= array.size
  end
  
  contiguous_subsequence
end

def max_sequence(array)
  if array.length == 1 && array.sum >= 0
    array.sum
  elsif array.length == 1 && array.sum < 0
    return 0
  else
    subsequence = find_the_contiguous_subsequence(array)
    max_sub = subsequence.max_by {|sub_arr| sub_arr.sum}.sum
  end
end


p max_sequence([7, 4, 11, -11, 39, 36, 10, -6, 37, -10, -32, 44, -26, -34, 43, 43]) == 155
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
