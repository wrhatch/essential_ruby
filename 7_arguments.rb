# Defining our own methods that can accept arguments

# Compare and contrast this to print_heading in 6_methods.rb
def print_heading(content)
  puts "=" * content.length
  puts "#{content}"
  puts "=" * content.length
end

print_heading("Students")

puts " - Ty"
puts " - Nick"
puts " - Alex"
puts " - Julia"

print_heading("Instructors")

puts " - Raghu"
puts " - Josh"
