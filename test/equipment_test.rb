require 'minitest/autorun'
require './lib/equipment'
require './lib/job'

class ElementTest < Minitest::Test

  # Swordのテスト
  def test_sword_fighter_add_offensive
    assert_equal 50, sword.offensive(fighter)
  end

  def test_sword_magician_add_offensive
    assert_equal 30, sword.offensive(magician)
  end

  def test_sword_martial_add_offensive
    assert_equal 30, sword.offensive(martial)
  end

  def test_sword_fighter_add_defence
    assert_equal 30, sword.defence(fighter)
  end

  def test_sword_magician_add_defence
    assert_equal 30, sword.defence(magician)
  end

  def test_sword_martial_add_defence
    assert_equal 30, sword.defence(martial)
  end

  # Stickのテスト

  def test_stick_fighter_add_offensive
    assert_equal 30, stick.offensive(fighter)
  end

  def test_stick_magician_add_offensive
    assert_equal 50, stick.offensive(magician)
  end

  def test_stick_martial_add_offensive
    assert_equal 30, stick.offensive(martial)
  end

  def test_stick_fighter_add_defence
    assert_equal 10, stick.defence(fighter)
  end

  def test_stick_magician_add_defence
    assert_equal 10, stick.defence(magician)
  end

  def test_stick_martial_add_defence
    assert_equal 10, stick.defence(martial)
  end

  # Groveのテスト

  def test_grove_fighter_add_offensive
    assert_equal 20, glove.offensive(fighter)
  end

  def test_grove_magician_add_offensive
    assert_equal 20, glove.offensive(magician)
  end

  def test_grove_martial_add_offensive
    assert_equal 20, glove.offensive(martial)
  end

  def test_grove_fighter_add_defence
    assert_equal 20, glove.defence(fighter)
  end

  def test_grove_magician_add_defence
    assert_equal 20, glove.defence(magician)
  end

  def test_grove_martial_add_defence
    assert_equal 40, glove.defence(martial)
  end

  private

  def sword
    Equipment.new(:SWORD)
  end

  def stick
    Equipment.new(:STICK)
  end

  def glove
    Equipment.new(:GLOVE)
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
