require_relative '../person'

describe Person do
  before :each do
    @person = Person.new(6, 'Milu', true)
  end

  it 'Return a Person object' do
    expect(@person.class) == Person
  end

  it 'Should be return name Milu' do
    expect(@person.name).to eq 'Milu'
  end

  it 'Should be return age 6' do
    expect(@person.age).to eq 6
  end

  it 'Should be return parent permission true' do
    expect(@person.parent_permission).to eql true
  end

  it 'checks the availability of Book class method/s' do
    expect(Person.instance_methods(false).include?(:add_rental)).to eq true
  end
end
