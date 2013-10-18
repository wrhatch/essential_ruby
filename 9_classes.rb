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

# Creating first individual instance of the Instructor class
person1 = Instructor.new
person1.first_name = "Raghu"
person1.last_name = "Betina"
person1.role = "Lecturer"
puts person1.inspect

# Creating second individual instance of the Instructor class
person2 = Instructor.new
person2.first_name = "Josh"
person2.last_name = "Elkin"
person2.role = "Teaching Assistant"
puts person2.inspect

# Creating first individual instance of the Student class
person3 = Student.new
person3.first_name = "Brian"
person3.last_name = "Smith"
person3.grade = "A+"
puts person3.inspect

# Creating second individual instance of the Student class
person4 = Student.new
person4.first_name = "Eric"
person4.last_name = "Snyder"
person4.grade = "A"
puts person4.inspect

puts person1.full_name
puts person1.role
puts person2.full_name
puts person2.role
puts person3.full_name
puts person3.grade
puts person4.full_name
puts person4.grade
