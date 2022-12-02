require 'minitest/autorun'
require_relative 'day2'

class TestDay2 < MiniTest::Unit::TestCase
  def setup
    @day2 = Day2.new('day2.test')
  end

  def test_part1
    assert_equal @day2.part1, 15
  end

  def test_part2
    assert_equal @day2.part2, 12
  end
end
