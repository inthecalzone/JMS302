puts 'Give me some words, and I will sort them:'
words = []

while true
    word = gets.chomp
    break if word.empty?
    
    words << word
    
end

puts 'Sweet! Here they are, sorted:'
puts words.sort