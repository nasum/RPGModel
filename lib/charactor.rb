class Charactor
  GENDER = {
    MAN: 0,
    WOMEN: 1
  }

  def initialize(gender)
    @gender = GENDER[gender]
  end

  def offensive
    case @gender
    when GENDER[:MAN]
      return 5
    else
      return 0
    end
  end

  def defence
    case @gender
    when GENDER[:WOMEN]
      return 5
    else
      return 0
    end
  end

  def man?
    @gender == GENDER[:MAN]
  end

  def women?
    @gender == GENDER[:WOMEN]
  end
end
