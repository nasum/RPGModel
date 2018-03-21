class Job
  JOB = {
    FIGHTER: 0,
    MAGICIAN: 1,
    MARTIAL: 2
  }

  def initialize(job)
    @job = JOB[job]
  end

  def skill(charactor)
    case @job
    when JOB[:FIGHTER]
      return 'ギガスラッシュ' if charactor.man?
      return 'ビッグバン' if charactor.women?
    when JOB[:MAGICIAN]
      return 'ベギラマ' if charactor.man?
      return 'メラミ' if charactor.women?
    when JOB[:MARTIAL]
      return 'ブースト' if charactor.man?
      return 'カウンタ' if charactor.women?
    end
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
