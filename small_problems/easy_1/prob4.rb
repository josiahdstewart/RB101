# input: +int, boolean; output: integer output of bonus
# requirements: true -> bonus = 1/2 salary; false -> bonus == 0
# integer output?
# if true return salary/2; if false return 0

def calculate_bonus(salary, bonus)
  bonus ? (salary/2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
