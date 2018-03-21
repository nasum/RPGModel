require 'minitest/autorun'
require './lib/element'
require './lib/job'

class ElementTest < Minitest::Test

  # Fighterのテスト
  def test_wind_fighter_add_offensive
    assert_equal 5, windElement.add_offensive(fighter)
  end

  def test_water_fighter_add_offensive
    assert_equal 10, waterElement.add_offensive(fighter)
  end

  def test_thunder_fighter_add_offensive
    assert_equal 15, thunderElement.add_offensive(fighter)
  end

  def test_wind_fighter_add_defence
    assert_equal 10, windElement.add_defence(fighter)
  end

  def test_water_fighter_add_defence
    assert_equal 15, waterElement.add_defence(fighter)
  end

  def test_thunder_fighter_add_defence
    assert_equal 0, thunderElement.add_defence(fighter)
  end

  # Magicianのテスト

  def test_wind_magician_add_offensive
    assert_equal 5, windElement.offensive(magician)
  end

  def test_water_magician_add_offensive
    assert_equal 10, waterElement.offensive(magician)
  end

  def test_thunder_magician_add_offensive
    assert_equal 15, thunderElement.offensive(magician)
  end

  def test_wind_magician_add_defence
    assert_equal 10, windElement.defence(magician)
  end

  def test_water_magician_add_defence
    assert_equal 5, waterElement.defence(magician)
  end

  def test_thunder_magician_add_defence
    assert_equal 5, thunderElement.defence(magician)
  end

  # Martialのテスト

  def test_wind_martial_add_offensive
    assert_equal 25, windElement.offensive(martial)
  end

  def test_water_magician_add_offensive
    assert_equal 10, waterElement.offensive(martial)
  end

  def test_thunder_magician_add_offensive
    assert_equal 15, thunderElement.offensive(martial)
  end

  def test_wind_magician_add_defence
    assert_equal 10, windElement.defence(martial)
  end

  def test_water_magician_add_defence
    assert_equal 5, waterElement.defence(martial)
  end

  def test_thunder_magician_add_defence
    assert_equal 0, thunderElement.defence(martial)
  end

  private

  def windElement
    Element.new(:WIND)
  end

  def waterElement
    Element.new(:WATER)
  end

  def thunderElement
    Element.new(:THUNDER)
  end

  def fighter
    Job.new(:FIGHTER)
  end

  def magician
    Job.new(:MAGICIAN)
  end

  def martial
    Job.new(:MARTIAL)
  end
end
