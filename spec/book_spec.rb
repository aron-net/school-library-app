require_relative '../book'

describe Book do
  before(:each) do
    @book = Book.new('Hello', 'Ruby')
  end
  it 'create book title' do
    expect(@book.title).to eq 'Hello'
  end

  it 'create book author' do
    expect(@book.author).to eq 'Ruby'
  end
end
