def stringy(number)
  binary = ''
  while binary.length < number
  case
  when binary.length == 0
    binary << '1'
  when binary[-1] == '1'
    binary << '0'
  when binary[-1] == '0'
    binary << '1'
  end
  end

  binary
end

puts stringy(4)
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
