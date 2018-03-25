class Job
  JOB = {
    FIGHTER: 0,
    MAGICIAN: 1,
    MARTIAL: 2
  }

  def initialize(job)
    @job = JOB[job]
  end

  def equipment_special_offence(equipment)
    offence = 0
    if @job == JOB[:FIGHTER] && equipment.sword?
      offence += 20
    elsif @job == JOB[:MAGICIAN] && equipment.stick?
      offence += 20
    end
    offence
  end

  def equipment_special_defence(equipment)
    defence = 0
    if @job == JOB[:MARTIAL] && equipment.glove?
      defence += 20
    end
    defence
  end

  def element_special_offence(element)
    offence = 0
    if @job == JOB[:MARTIAL] && element.wind?
      offence += 20
    end
    offence
  end

  def element_special_defence(element)
    defence = 0
    if @job == JOB[:FIGHTER] && element.water?
      defence += 10
    elsif @job == JOB[:MAGICIAN] && element.thunder?
      defence += 5
    end
    defence
  end

  def skill(charactor)
    skill = ""
    case @job
    when JOB[:FIGHTER]
      skill = 'ギガスラッシュ' if charactor.man?
      skill = 'ビッグバン' if charactor.women?
    when JOB[:MAGICIAN]
      skill = 'ベギラマ' if charactor.man?
      skill = 'メラミ' if charactor.women?
    when JOB[:MARTIAL]
      skill = 'ブースト' if charactor.man?
      skill = 'カウンタ' if charactor.women?
    end
    skill
  end

  def fighter?
    @job == JOB[:FIGHTER]
  end

  def magician?
    @job == JOB[:MAGICIAN]
  end

  def martial?
    @job == JOB[:MARTIAL]
  end
end
