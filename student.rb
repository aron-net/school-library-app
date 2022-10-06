require_relative './person'

# implement the student class

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def class(room)
    @classroom = classroom
    room.students_list.push(self) unless room.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
