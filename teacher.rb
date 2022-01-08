require_relative 'person'

class Teacher < Person
  def initialize(name, id, parent_permission, age, specialization)
    super(age, id, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
