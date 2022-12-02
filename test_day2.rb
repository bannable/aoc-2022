require 'minitest/autorun'
require_relative 'day2'

class TestDay2 < MiniTest::Unit::TestCase
  def setup
    @day2 = Day2.new('day2.test')
  end

  def test_part1
    assert_equal 15, @day2.part1
  end

  def test_part2
    assert_equal 12, @day2.part2
  end
end
