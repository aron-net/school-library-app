require_relative '../student'

describe Student do
  before(:each) do
    @student = Student.new('student', 5, 'Tiwa', false)
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
    expect(@student.parent_permission).to eq false
  end

  it 'should say "¯\(ツ)/¯" when we call the play_hooky method' do
    expect(@student.play_hooky).to eql "¯\(ツ)/¯"
  end
end
