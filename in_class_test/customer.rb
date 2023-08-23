class Student
  $no_of_students=0
  def initialize(id, name)
    @student_id = id
    @student_name = name
    $no_of_students=$no_of_students+1
  end

  def display_student_details
    puts @student_id
    puts  @student_name
    #method to print details of a student

  end

end

#----Main Script------#
a=Student.new(12,"Biraj")
b=Student.new(13,"Sewak")
# Create Objects
a.display_student_details
b.display_student_details
puts "total student=" +$no_of_students.to_s
# Call Methods