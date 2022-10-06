class Book
  attr_accessor :title, :author
  attr_reader :rentals_list

  def initialize(title, author)
    @title = title
    @author = author
    @rentals_list = []
  end

  def add_rental(rental)
    @rentals_list.push(rental)
    rental.book = self
  end
end
