require 'minitest/autorun'
require_relative 'day1'

class TestDay1 < MiniTest::Unit::TestCase
  def setup
    @day2 = Day1.new('day1.test')
  end

  def test_part1
    assert_equal 24_000, @day2.part1
  end

  def test_part2
    assert_equal 45_000, @day2.part2
  end
end
