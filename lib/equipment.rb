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
    when EQUIPMENT[:STICK]
      offensive += 30
    when EQUIPMENT[:GLOVE]
      offensive += 20
    end
    offensive += job.equipment_special_offence(self)
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
    end
    defence += job.equipment_special_defence(self)
    defence
  end

  def sword?
    @equipment == EQUIPMENT[:SWORD]
  end

  def stick?
    @equipment == EQUIPMENT[:STICK]
  end

  def glove?
    @equipment == EQUIPMENT[:GLOVE]
  end
end
