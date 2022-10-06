require_relative './person'

# implement the student class

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def class(classroom)
    @classroom = classroom
    classroom.students_list.push(self) unless classroom.students_list.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
