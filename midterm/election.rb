results = []

def get_results(candidate_name)
    puts "What is the candidate's name?"
    candidate_name = gets.chomp
    candidate_name
end

get_results "Michelle Nunn"
get_results "David Perdue"

puts "What are his/her results? Type 'done' when you're done."
    while true
        result = gets.chomp
    if (result.downcase == 'done')
        break
    else 
        results.push result.to_i
    end
end

def calculate_results(results)
    total_votes = 0
    results.each do |result|
        total_votes += result.to_i
        end
    results.each do |result|
        total_percentage = (result/total_votes) * 100
        end
end
        
puts "#{candidate_name} is winning with #{total_percentage}% of the votes."

