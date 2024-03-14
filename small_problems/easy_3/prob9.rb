# input integer output boolean if palindrome fo integer
# ds int
# algo:
# take int, convert string, reverse, convert int, compare

def palindromic_number?(integer)
  integer.to_s.reverse.to_i == integer
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
