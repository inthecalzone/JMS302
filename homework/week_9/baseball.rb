def get_runs(player)
    puts "What runs did #{ player } score? Enter 'done' when done."
    total = 0
    while true
        number = gets.chomp
    if number.downcase == 'done'
        break
    end
        total += number.to_i
    end
    total
end

pujols_total = get_runs "Albert Pujols" 
sosa_total = get_runs "Sammy Sosa"


pujols_percentage = (pujols_total.to_f / (pujols_total.to_f + sosa_total.to_f)) * 100
sosa_percentage = (sosa_total.to_f / (pujols_total.to_f + sosa_total.to_f)) * 100

puts "Albert Pujols had #{ pujols_percentage }% of the runs scored back then."
puts "Sammy Sosa had #{ sosa_percentage }% of the runs scored back then."