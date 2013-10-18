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

p1 = Instructor.new
p1.first_name = "Raghu"
p1.last_name = "Betina"
p1.role = "Instructor"
puts p1.inspect

p2 = Student.new
p2.first_name = "Brian"
p2.last_name = "Smith"
p2.grade = "A+"
puts p2.inspect

puts p1.full_name
puts p1.role
puts p2.full_name
puts p2.grade
