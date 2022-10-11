class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
  end

  def add_person(person)
    @person = person
    person.rentals_list.push(self) unless person.rentals_list.include?(self)
  end

  def add_book(book)
    @book = book
    book.rentals_list.push(self) unless book.rentals_list.include?(self)
  end

  def self.create_rental_check(books, _people)
    index_book = nil
    index_person = nil
    until (0..books.length - 1).include? index_book
      puts 'Select a book from the following list by number'
      Book.list_all_books(books)
      index_book = gets.chomp.to_i
    end
    print 'Date: '
    date = gets.chomp
    Rental.new(date, person[index_person], books[index_book])
  end

  def self.create_rental(books, people, rentals)
    if people.empty? && books.empty?
      puts 'There are no people and books registered to make the rental'
    elsif books.empty?
      puts 'There are no registered books to rental'
    elsif people.empty?
      puts 'There are no registered people to make the rental'
    else
      rentals << create_rental_check(books, people)
      print "Rental created successfully\n"
    end
  end

  def self.show_rental(people)
    print 'ID of person: '
    id = gets.chomp
    person = nil
    people.each { |p| person = p if p.id == id }
    if person.nil?
      puts "There is not person with the id #{id} registered"
    elsif person.rentals.length.zero?
      puts "Person #{id}: #{person.name} doesn't have rentals"
    else
      puts 'Rentals:'
      person.rentals.each do |rental|
        puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
      end
    end
  end

  def self.list_all_rentals_for_id(people, rentals)
    if rentals.empty?
      puts 'There are not rentals registered'
    else
      show_rental(people)
    end
  end
end
