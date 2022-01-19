require_relative 'corrector'

class Person
  def initialize(age, id, name = 'unknown')
    @age = age
    @id = id
    @corrector = Corrector.new
    validate_name(name)
  end

  attr_accessor :name, :age
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
