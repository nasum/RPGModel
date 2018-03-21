class Equipment
  EQUIPMENT = {
    SWORD: 0,
    STICK: 1,
    GLOVE: 2
  }

  def initialize(equipment)
    @equipment = EQUIPMENT[equipment]
  end

  def offensive(job)
    offensive = 0

    case @equipment
    when EQUIPMENT[:SWORD]
      offensive += 30
      offensive += 20 if job.fighter?
    when EQUIPMENT[:STICK]
      offensive += 30
      offensive += 20 if job.magician?
    when EQUIPMENT[:GLOVE]
      offensive += 20
    end

    offensive
  end

  def defence(job)
    defence = 0

    case @equipment
    when EQUIPMENT[:SWORD]
      defence += 30
    when EQUIPMENT[:STICK]
      defence += 10
    when EQUIPMENT[:GLOVE]
      defence += 20
      defence += 20 if job.martial?
    end

    defence
  end
end
