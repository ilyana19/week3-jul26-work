class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

nadia = Instructor.new("Nadia")
nadia.greeting

chris = Student.new("Chris")
chris.greeting

nadia.teach
chris.learn

# chris.teach # => undefined method, "Instructor" and "Student" classes are different. Just as how nadia won't be able to call "learn"
# nadia.learn