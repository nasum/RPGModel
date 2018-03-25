class Element
  Element = {
    WIND: 0,
    WATER: 1,
    THUNDER: 2
  }

  def initialize(element)
    @element = Element[element]
  end

  def offensive(job)
    offensive = 0
    case @element
    when Element[:WIND]
      offensive += 5
    when Element[:WATER]
      offensive +=  10
    when Element[:THUNDER]
      offensive +=  15
    end
    offensive += job.element_special_offence(self)
    offensive
  end

  def defence(job)
    defence = 0
    case @element
    when Element[:WIND]
      defence += 10
    when Element[:WATER]
      defence += 5
    when Element[:THUNDER]
      defence +=  0
    end
    defence += job.element_special_defence(self)
    defence
  end

  def wind?
    @element == Element[:WIND]
  end

  def water?
    @element == Element[:WATER]
  end

  def thunder?
    @element == Element[:THUNDER]
  end
end
