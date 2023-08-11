class Student

  def initialize(a,b) #constructor

  @StudentID = "a"
  @StudentName = "b"
  private int numberOfStudents=0;
  def total()
    numberOfStudents=+1;
  end
  end
  def display_student_details()
    puts " Student ID is: #{@StudentID}"
    puts " Student Name is: #{@StudentName}"
  end
end
#-----Main Script-----#
#class instantiations
obj1=Student.new(s1503117,Tanuj)
obj2=Student.new(s1473484,Muskaan)
obj1.display_student_details
obj2.display_student_details
put t