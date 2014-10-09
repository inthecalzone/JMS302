def nontraditional_marriage(last_name, partner_last_name)
     last_name += "-" + partner_last_name
end

puts "Enter your last name:"
last_name = gets.chomp
puts "Enter your partner's last name:"
partner_last_name =gets.chomp
last_name = nontraditional_marriage(last_name, partner_last_name)
puts last_name

results = []

#def get_results(candidate_name)
    puts "What is the candidate's name?"
    candidate_name = gets.chomp
    candidate_name
end

#get_results("Michelle Nunn")

#puts "What are his/her results? Type 'done' when you're done."
    while true
        result = gets.chomp
    if (result.downcase == 'done')
        break
    else 
        results.push(result.to_i)
    end
end

total_votes = 0
results.each do |result|
  voting_percentage = total_votes + result
end

#puts "#{candidate_name} is winning with #{voting_percentage}% of the vote"