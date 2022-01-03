class Person
  def initialize(name = "unknown", parent_permission = false, age)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name
  attr_accessor :age
  attr_reader :id

  def is_of_age?
    if @age >= 18
      return true
    else
      return false
    end
  end

  def can_use_services?
    if @parent_permission || is_of_age?
      true
    else
      false
    end
  end

  private :is_of_age?

end