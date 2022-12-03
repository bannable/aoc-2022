require 'minitest/autorun'
require_relative 'day3'

class TestDay3 < MiniTest::Test
  def setup
    @day = Day3.new('day3.test')
  end

  def test_part1
    assert_equal 157, @day.part1
  end

  def test_part2
    assert_equal 70, @day.part2
  end
end
