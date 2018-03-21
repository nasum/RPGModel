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
      offensive += 20 if job.martial?
    when Element[:WATER]
      offensive +=  10
    when Element[:THUNDER]
      offensive +=  15
    end
    offensive
  end

  def defence(job)
    defence = 0
    case @element
    when Element[:WIND]
      defence += 10
    when Element[:WATER]
      defence += 5
      defence += 10 if job.fighter?
    when Element[:THUNDER]
      defence += 5 if job.magician?
    end
    defence
  end
end
