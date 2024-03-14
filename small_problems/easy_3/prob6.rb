# inpute two args outpt true IFF one arguments is truthy
# data strucutre: boolean
# algo:
# input two args, check if one true and one false

def xor?(arg1, arg2)
  unless (arg1 && arg2) || !(arg1 || arg2)
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
