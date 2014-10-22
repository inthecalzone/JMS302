file = "restaurants.txt"

unless File.exists? file
    puts "#{file} doesn't exist"
    exit
end

restaurants = []

puts "Would you like to add to the restaurant list? Type 'done' when done."
while true
    restaurant = gets.chomp
    if restaurant == "done"
        break
    else
        restaurants.push restaurant
    end
end
    
File.open("#{file}", "a") do |f|
     restaurants.each do |restaurant|
            f.write "#{ res0taurant } \n"
        end
end

random_restaurant_index = rand(restaurants.size)

puts "You should stop bitching and go to #{ restaurants[random_restaurant_index]}."