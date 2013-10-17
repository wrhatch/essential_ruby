# Each

numbers = [3, 1, 5, 4]

numbers.each do |a_number|
  puts a_number * a_number
end


r = { "first_name" => "Raghu", "last_name" => "Betina" }
j = { "first_name" => "Josh", "last_name" => "Elkin" }

people = [r, j]

people.each do |person|
  puts "Howdy, #{person["first_name"]} #{person["last_name"]}!"
end
