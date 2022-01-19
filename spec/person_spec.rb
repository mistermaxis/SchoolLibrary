require_relative '../src/person'

describe Person do
  context 'When testing the Person class' do
    it "should return a new Person instance with the supplied name and age" do
      person = Person.new(37, 777,'Bob')
      name = person.name
      id = person.id
      age = person.age
      expect(name).to eq 'Bob'
      expect(id).to eq 777
      expect(age).to eq 37
    end
  end
end
