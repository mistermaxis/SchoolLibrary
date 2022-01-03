class Person
  def initialize(name = "unknown", parent_permission = true, age)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name
  attr_accessor :age
  attr_reader :id

  def can_use_services?
    if is_of_age? and parent_permission
      true
    else
      false
    end
  end

  def is_of_age?
    if age >= 18
      true
    else
      false
    end
  end

  private :is_of_age?

end