=begin
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
=end

# first time
def solution(string)
  string_arr = string.chars
  paired_arr = string_arr.each_slice(2).to_a
  
  result_arr = paired_arr.map do |sub_arr|
    if sub_arr.length.even?
      sub_arr.join
    else
      sub_arr.push("_").join
    end
  end
  result_arr
end

# second time 
=begin
29. Split Strings
https://www.codewars.com/kata/515de9ae9dcfc28eb6000001
6 kyu
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

=end

# input: string
# output: array of strings
# rules:
  # If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore _

# algorithm:
  # using each slice, slice the string to two element sub_arrays
  # check the length of each sub_arr  
  # if the length is odd
    # add _ to the last sub_array
    # push the underscore to last arr
  # return the result


def solution(string)
  sliced = string.chars.each_slice(2).to_a
  
  if string.chars.length.odd?
    sliced.last.push("_")
  end
  
  sliced.map {|sub_arr| sub_arr.join}
  
end


p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []


p solution('abc') == ['ab', 'c_']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
