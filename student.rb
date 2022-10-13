require_relative './person'

# implement the student class

class Student < Person
  attr_accessor :classroom, :id, :parent_permission

  def initialize(classroom, *args)
    super(*args)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def self.create_student
    print 'Classroom: '
    classroom = gets.chomp

    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    parent_permission_user = gets.chomp
    has_permission = case parent_permission_user.downcase
                     when 'y'
                       true
                     else
                       false
                     end

    Student.new(classroom, age, name, parent_permission: has_permission)
  end
end
