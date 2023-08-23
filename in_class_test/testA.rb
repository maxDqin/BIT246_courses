# iteration = 1
# iteration += 1 until iteration < 4
# puts iteration
#
# Q7
# 1.step(10, 2) do |x|
#   print x, ". Counting by 2\n"
# end
#
#  Q10
# def category(age)
#   case age
#   when age.between?(0, 2) then
#     puts "baby"
#   when age.between?(3, 6) then
#     puts "little child"
#   when age.between?(7, 12) then
#     puts "child"
#   when age.between?(13, 18) then
#     puts "youth"
#   else
#     puts "adult"
#   end
# end
#
# def category(age)
#   case age
#   when 0..2 then
#     puts "baby"
#   when 3..6 then
#     puts "little child"
#   when 7..12 then
#     puts "child"
#   when 13..18 then
#     puts "youth"
#   else
#     puts "adult"
#   end
# end

# category(3)
# 'dkfd'.chomp
#
# Taking input from the console

class Student
  attr_accessor :name
  attr_accessor :age

  # def initialize(name, age)
  #   @name = name
  #   @age = age
  # end

  def display_details(name, age)
    @name = name
    @age = age
    puts "Name: "+name
    puts "Age: #@age"
  end
end

# Given name and age for the student David Smith
name = "David Smith"
age = 17
#
# Creating an object for the student
student = Student.new

# Displaying the student's details
student.display_details("a", 1)
#
# def category(age)
#   case
#   when age>=0 && age<=2
#     puts "baby"
#   when age>3 && age<=6
#     puts "little child"
#   end
# end
#
# category(4)