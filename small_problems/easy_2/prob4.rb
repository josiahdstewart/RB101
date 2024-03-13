# input: age, desired retirement age output: year of retirement and hwo many yeears of work
# prob need time class
# data structure: int
# algo
# get age, desired age of retirement; intialize new time for now, puts current year and yor by adding lenght until retirement to curent year

puts "What is your age?"
current_age = gets.chomp.to_i
puts "At what age would you like to retire?"
age_retire = gets.chomp.to_i
years_till_retire = age_retire - current_age

t = Time.now
year_retire = t.year + years_till_retire

puts "It's #{t.year}. You will retire in #{year_retire}. \
You have only #{years_till_retire} years left of work!"

