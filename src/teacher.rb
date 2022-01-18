require_relative 'person'

class Teacher < Person
  def initialize(name, id, age, specialization)
    super(age, id, name)
    @specialization = specialization
  end

  attr_accessor :specialization

  def can_use_services?
    true
  end

  def to_json(*args)
  {
    JSON.create_id  => self.class.name,
    'a'             => [ name, id, age, specialization ]
  }.to_json(*args)
  end
end
