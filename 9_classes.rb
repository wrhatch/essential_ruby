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

person1 = Instructor.new
person1.first_name = "Raghu"
person1.last_name = "Betina"
person1.role = "Instructor"
puts person1.inspect

person2 = Student.new
person2.first_name = "Brian"
person2.last_name = "Smith"
person2.grade = "A+"
puts person2.inspect

puts person1.full_name
puts person1.role
puts person2.full_name
puts person2.grade
