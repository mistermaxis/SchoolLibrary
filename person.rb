class Person
  def initialize(age, name = 'unknown', parent_permission: false)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def of_age?
    @age >= 18
  end

  def can_use_services?
    if @parent_permission || of_age?
      true
    else
      false
    end
  end

  private :of_age?
end
