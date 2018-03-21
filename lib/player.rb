class Player
  def initialize(charactor, element, job, equipment)
    @charactor = charactor
    @element = element
    @job = job
    @equipment = equipment
  end

  def offensive_power
    @charactor.offensive + @element.offensive(@job) + @equipment.offensive(@job)
  end

  def defence_power
    @charactor.defence + @element.defence(@job) + @equipment.defence(@job)
  end

  def skill
    @job.skill(@charactor)
  end
end
