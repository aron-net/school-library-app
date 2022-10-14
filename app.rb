require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'
require './refactor'
require './file_handler'
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
    when 7
      puts 'Thank you for using this app!'
      save_files
    else
      puts 'Please enter a number between 1 and 7'
      menu.menu
    end
  end

  def save_files
    FileHandler.write_book(@books)
    FileHandler.write_person(@people)
    FileHandler.write_rentals(@rentals)
  end

  def run
    FileHandler.read_book(@books)
    FileHandler.read_person(@people)
    FileHandler.read_rentals
    user_choice = 0
    menu = Select.new
    print 'Welcome To School Library App'
    # while user_choice != 7
    #   menu.menu
    #   user_choice = gets.chomp.to_i
    #   options(user_choice)
    # end
    menu.menu
    
  end
end

# rubocop:enable Metrics
