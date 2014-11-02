beats = {
    "Rock" => "Scissors",
    "Scissors" => "Paper",
    "Paper" => "Rock"
    }

puts beats
puts "keys = #{beats.keys}"

puts rand(beats.keys.size)