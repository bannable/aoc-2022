class Day3
  PRIORITIES = ('a'..'z').to_a | ('A'..'Z').to_a

  def initialize(file)
    @lines = File.readlines(file, chomp: true).map(&:chars)
  end

  def part1
    @lines.inject(0) { |sum, l| sum + 1 + PRIORITIES.index((l[0, l.size / 2] & l[(l.size / 2)..]).first) }
  end

  def part2
    @lines.each_slice(3).inject(0) { |sum, g| sum + 1 + PRIORITIES.index((g[0] & g[1] & g[2]).first) }
  end

  def all
    [part1, part2]
  end
end

if __FILE__ == $0 then
  puts Day3.new('day3.input').all
end
