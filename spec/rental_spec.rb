require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe Rental do
  before(:each) do
    @book = Book.new('Tell Me Your Dreams', 'Sidney Sheldon')
    @person = Person.new(7, 'Syrs', parent_permission: true)
    @rental = Rental.new('20/02/2022', @person, @book)
  end

  it 'Create a new rental with a date, book and person' do
    expect(@rental).to have_attributes(date: '20/02/2022')
  end
  it 'Object instance of rental' do
    expect(@rental).to be_an_instance_of Rental
  end
end
