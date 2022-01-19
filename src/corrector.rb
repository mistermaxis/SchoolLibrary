# frozen_string_literal: true

class Corrector
  def correct_name(name)
    fl = name[0].upcase
    name[0] = fl
    name = name[0, 10] if name.length > 10
    name
  end
end
