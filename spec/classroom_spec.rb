require_relative '../src/classroom'
require_relative '../src/student'

describe Classroom do
  classroom = Classroom.new('Biology')

  context 'When testing the Classroom class' do
    it "should return a new Classroom instance with the supplied label" do
      label = classroom.label
      expect(label).to eq 'Biology'
    end

    it "should add a student" do
      student = Student.new('Bob', 111, 12, true)
      classroom.add_student(student)
      expect(classroom.students[0]).to eq student
      expect(student.classroom).to eq classroom
    end
  end
end