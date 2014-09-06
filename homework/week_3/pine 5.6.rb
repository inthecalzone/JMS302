puts "What's your first name?"
first = gets.chomp
puts "What's your middle name?"
middle = gets.chomp
puts "What's your last name?"
last = gets.chomp
puts 'Hola, ' + first + ' ' + middle + ' ' + last + '!'

puts "What's your favorite number?"
favorite = gets.chomp.to_i
puts "Eh, that's okay, but #{favorite + 1} is superior to me."