require_relative '../book'
require_relative '../person'
describe Book do
  before(:each) do
    @book = Book.new('Hello', 'Ruby')
  end

  it 'takes two parameters and returns a Book object' do
    expect(@book.class) == Book
  end

  it 'create book title' do
    expect(@book.title).to eq 'Hello'
  end

  it 'create book author' do
    expect(@book.author).to eq 'Ruby'
  end

  it 'checks the availability of Book class method/s' do
    expect(Book.instance_methods(false).include?(:add_rental)).to eq true
  end

end
