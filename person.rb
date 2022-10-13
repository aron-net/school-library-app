require 'securerandom'
require './nameable'
require './trimmer'
require './capitalize'

class Person < Nameable
  attr_accessor :name, :age, :rentals, :parent_permission, :id

  def initialize(age, name, parent_permission)
    super()
    @id = nil || SecureRandom.random_number(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  def can_use_services?
    is_of_age || parent_permission ? true : false
  end

  def correct_name
    @name
  end

  def self.list_all_people(people)
    if people.empty?
      puts 'There are no people yet! Kindly add a student or teacher.'
    else
      people.each_with_index do |person, index|
        puts "#{index} ) [ #{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def self.create_person(people)
    print 'Do you want to create a student (1) or teacher (2) [Input a number]: '
    option = gets.chomp.to_i

    case option

    when 1
      person = Student.create_student
    when 2
      person = Teacher.create_teacher
    else
      puts 'Invalid input. Kindly type 1 or 2'
    end
    people << person

    print "#{person.class} created successfully\n"
  end

  private

  def of_age?
    age >= 18
  end
end
