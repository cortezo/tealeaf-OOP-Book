class Student
  attr_reader :name

  def initialize (name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    if self.grade > student.grade
      true
    else
      false
    end
  end

  protected

  def grade
    @grade
  end

end

gary = Student.new("Gary", 21)
joe = Student.new("Joe", 95)

puts gary.better_grade_than?(joe)
