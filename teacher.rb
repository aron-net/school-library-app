require './person'

class Teacher < Person
  attr_accessor :specialization, :id
  attr_reader :parent_permission

  def initialize(specialization, *args)
    super(*args)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def self.create_teacher
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    Teacher.new(specialization, age, name, parent_permission: true)
  end
end
