class Corrector
  def correct_name(name)
    fl = name[0].upcase
    name[0] = fl
    if name.length > 10
      name = name[0,10]
    end
    name
  end
end