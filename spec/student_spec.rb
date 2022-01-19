# frozen_string_literal: true

require_relative '../src/student'

describe Student do
  context 'When testing the Student class' do
    it 'should return a new Student instance with the supplied name, age and permission' do
      student = Student.new('Billy', 777, 23, false)
      name = student.name
      id = student.id
      age = student.age
      parent_permission = student.parent_permission
      expect(name).to eq 'Billy'
      expect(id).to eq 777
      expect(age).to eq 23
      expect(parent_permission).to eq false
    end

    it 'should diplay the appropriate message' do
      student = Student.new('Billy', 777, 23, false)
      expect(student.play_hooky).to eq '¯\\(ツ)/¯'
    end
  end
end
