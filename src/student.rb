require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(name, id, age, parent_permission)
    super(age, id, name)
    @parent_permission = parent_permission
    new_classroom = Classroom.new('None')
    @classroom = new_classroom
    new_classroom.students.push(self) unless new_classroom.students.include?(self)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [name, id, age, parent_permission]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end
end
