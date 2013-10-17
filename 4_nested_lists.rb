# Nested Arrays and Hashes

r = { "first_name" => "Raghu", "last_name" => "Betina" }
j = { "first_name" => "Josh", "last_name" => "Elkin" }

instructors = [r, j]

puts "Top Level"
puts "========="
puts instructors.class # => Array
puts instructors.length
puts instructors.inspect

puts
puts "Second Level"
puts "============"
puts instructors[1].class # => Hash
puts instructors[1].keys
puts instructors[1].inspect

puts
puts "Third Level"
puts "==========="
puts instructors[1]["last_name"].class # => String
puts instructors[1]["last_name"]
