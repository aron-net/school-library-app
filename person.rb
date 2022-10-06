require 'securerandom'
require './nameable'
require './trimmer'
require './capitalize'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permit = parent_permission
  end

  def can_use_services?
    is_of_age || parent_permission ? true : false
  end

  def correct_name
    @name
  end
  
  private

  def of_age?
    age >= 18
  end
end

person = Person.new(22, 'maximilianus')
  puts person.correct_name
  capitalized_person = CapitalizaDecorator.new(person)
    puts capitalized_person.correct_name
  capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
    puts capitalized_trimmed_person.correct_name
