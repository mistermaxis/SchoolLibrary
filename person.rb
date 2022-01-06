require_relative 'corrector'

class Person
  def initialize(age, name = 'unknown', parent_permission: false)
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    validate_name(name)
    @rentals = []
  end

  attr_accessor :name, :age, :rentals
  attr_reader :id

  def validate_name(name)
    @name = @corrector.correct_name(name)
  end

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
