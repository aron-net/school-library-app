require_relative '../student'

# rubocop:disable Lint/UselessAssignment

describe Student do
  before(:each) do
    @student = Student.new('student', 5, 'Tiwa', parent_permission = false)
  end

  it 'Should be create a student name' do
    expect(@student.name).to eq 'Tiwa'
  end
  it 'Should be create a stydent age' do
    expect(@student.age).to eq 5
  end

  it 'Should be create a student classroom' do
    expect(@student.classroom).to eq 'student'
  end

  it 'Should be create a student check student parent permission' do
    expect(@student.parent_permission).to eql false
  end
end

# rubocop:enable Lint/UselessAssignment
