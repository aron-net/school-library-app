require_relative '../teacher'

describe Teacher do
  before(:each) do
    @teacher = Teacher.new('Developer', 5, 'Tiwa', parent_permission: true)
  end

  it 'Should be create a student name' do
    expect(@teacher.name).to eq 'Tiwa'
  end

  it 'Should be create a student name' do
    expect(@teacher.specialization).to eq 'Developer'
  end

  it 'should be an object instance of Teacher' do
    expect(@teacher).to be_an_instance_of Teacher
  end

  it 'should return true' do
    expect(@teacher.can_use_services?).to eq true
  end
end
