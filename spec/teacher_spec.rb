# frozen_string_literal: true

require_relative '../src/teacher'

describe Teacher do
  context 'When testing the Teacher class' do
    it 'should return a new Teacher instance with the supplied name, age and specialization' do
      teacher = Teacher.new('Sandra', 777, 65, 'Math')
      name = teacher.name
      id = teacher.id
      age = teacher.age
      specialization = teacher.specialization
      expect(name).to eq 'Sandra'
      expect(id).to eq 777
      expect(age).to eq 65
      expect(specialization).to eq 'Math'
    end
  end
end
