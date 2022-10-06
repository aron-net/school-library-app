class Classroom
  attr_accessor :label
  attr_reader :students_list

  def initialize(label)
    @label = label
    @students_list = []
  end

  def add_student(student)
    @students_list.push(student)
    student.class = self
  end
end
