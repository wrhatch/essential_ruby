class Mammal
end

class Primate < Mammal
end

class Person < Primate
  attr_accessor :first_name
  attr_accessor :last_name

  def full_name
    return "#{first_name} #{last_name}"
  end
end

class Instructor < Person
  attr_accessor :role
end

class Student < Person
  attr_accessor :grade
end

p = Instructor.new
p.first_name = "Raghu"
p.last_name = "Betina"
p.role = "Instructor"
puts p.inspect

j = Student.new
j.first_name = "Josh"
j.last_name = "Elkin"
j.grade = "A+"
puts p.inspect

puts p.full_name
puts j.full_name
puts p.role
puts j.grade
