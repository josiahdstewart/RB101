#input:user input! 4 strings; noun, verb, adj, adv. output: short story
# requirements: need validation? etc.?
# data structure: string
# multiple methods: one prompts user for info,
def input(kind)
  puts "Enter a #{kind}: "
  gets.chomp
end

noun = input('noun')
verb = input('verb')
adjective = input('adjective')
adverb = input('adverb')

puts "Have you heard of #{noun}? I #{adverb} see such #{adjective} hair thatmy wife #{verb}"
