def is_odd?(num)
  num.abs % 2 != 0
end

puts is_odd?(2)
puts is_odd?(555)
puts is_odd?(-777)
puts is_odd?(0)
