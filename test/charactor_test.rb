require 'minitest/autorun'
require './lib/charactor'

class CharactorTest < Minitest::Test
  def test_man_add_offensive
    assert_equal 5, manCharactor.offensive
  end

  def test_women_add_offensive
    assert_equal 0, womenCharactor.offensive
  end

  def test_man_add_defence
    assert_equal 0, manCharactor.defence
  end

  def test_women_add_defence
    assert_equal 5, womenCharactor.defence
  end

  private

  def manCharactor
    Charactor.new(:MAN)
  end

  def womenCharactor
    Charactor.new(:WOMEN)
  end
end
