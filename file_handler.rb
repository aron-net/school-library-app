require './book'
require 'json'

class FileHandler
  SAVE_DATA = './SAVE_DATA/'.freeze

  def self.read_book(books)
    path = "#{SAVE_DATA}book.json"
    return unless File.exist?(path)

    book_file = File.open(path)
    JSON.parse(book_file.read).each { |book| books << Book.new(book['title'], book['author'], book['id']) }
    book_file.close
  end

  def self.write_book(books)
    return if books.empty?

    path_file = "#{SAVE_DATA}book.json"
    data_books = books.map do |book|
      { id: book.id, title: book.title, author: book.author }
    end
    File.write(path_file, JSON.pretty_generate(data_books))
  end

  def self.read_person(people)
    path = "#{SAVE_DATA}person.json"
    return unless File.exist?(path)

    people_file = File.open(path)
    JSON.parse(people_file.read).each do |person|
      if person['class'] == 'Student'
        new_student = Student.new(person['classroom'], person['age'], person['name'], person['parent_permission'])
        new_student.id = person['id']
        people << new_student
      else
        new_teacher = Teacher.new(person['specialization'], person['age'], person['name'],
                                  person['parent_permission'])
        new_teacher.id = person['id']
        people << new_teacher
      end
    end
    people_file.close
  end
end
