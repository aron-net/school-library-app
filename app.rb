require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'
require './refactor'

# rubocop:disable Metrics

class App
  attr_reader :books, :people, :rentals

  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def options(input)
    case input
    when 1 then Book.list_all_books(@books)
    when 2 then Person.list_all_people(@people)
    when 3 then Person.create_person(@people)
    when 4 then Book.create_book(@books)
    when 5 then Rental.create_rental(@books, @people, @rentals)
    when 6 then Rental.list_all_rentals_for_id(@people, @rentals)
    when 7 then puts 'Thank you for using this app!'
    else
      puts 'Please enter a number between 1 and 7'
    end
  end

  def run
    user_choice = 0
    menu = Select.new
    print 'Welcome To School Library App'
    while user_choice != 7
      menu.menu
      user_choice = gets.chomp.to_i
      options(user_choice)
    end
  end
end

# rubocop:enable Metrics
