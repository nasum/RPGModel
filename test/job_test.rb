require 'minitest/autorun'
require './lib/charactor'
require './lib/job'

class JobTest < Minitest::Test
  def test_man_fighter_skill
    assert_equal 'ギガスラッシュ', fighter.skill(man)
  end

  def test_women_fighter_skill
    assert_equal 'ビッグバン', fighter.skill(women)
  end

  def test_man_magician_skill
    assert_equal 'ベギラマ', magician.skill(man)
  end

  def test_women_magican_skill
    assert_equal 'メラミ', magician.skill(women)
  end

  def test_man_martial_skill
    assert_equal 'ブースト', martial.skill(man)
  end

  def test_women_martial_skill
    assert_equal 'カウンタ', martial.skill(women)
  end

  private

  def fighter
    Job.new(:FIGHTER)
  end

  def magician
    Job.new(:MAGICIAN)
  end

  def martial
    Job.new(:MARTIAL)
  end

  def man
    Charactor.new(:MAN)
  end

  def women
    Charactor.new(:WOMEN)
  end
end
