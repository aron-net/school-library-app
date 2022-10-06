class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    book.rentals_list.push(self)
    person.rentals_list.push(self)
  end

  def add_person(person)
    @person = person
    person.rentals_list.push(self) unless person.rentals_list.include?(self)
  end

  def add_book(book)
    @book = book
    book.rentals_list.push(self) unless book.rentals_list.include?(self)
  end
end
