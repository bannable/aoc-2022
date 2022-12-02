class Day1
  def initialize(file)
    @food = File.read(file, chomp: true).split("\n\n").map { |line| line.split.map(&:to_i) }
  end

  def part1
    @food.map(&:sum).max
  end

  def part2
    @food.map(&:sum).max(3).sum
  end

  def all
    [part1, part2]
  end
end

if __FILE__ == $0 then
  puts Day1.new('day1.input').all
end
