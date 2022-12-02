class Day2
  attr_reader :rounds

  MATCHUPS = [
    [1, 2, 0],
    [0, 1, 2],
    [2, 0, 1]
  ]

  def initialize(file)
    @rounds = File.readlines(file, chomp: true).map { |line| [line[0].ord - 'A'.ord, line[2].ord - 'X'.ord] }
  end

  def part1
    rounds.inject(0) { |sum, round| sum + MATCHUPS[round[0]][round[1]] * 3 + round[1] + 1}
  end

  def part2
    matchups = MATCHUPS.reverse
    rounds.inject(0) { |sum, round| sum + round[1] * 3 + matchups[round[0]][round[1]] + 1}
  end

  def all
    [part1, part2]
  end
end

if __FILE__ == $0 then
  puts Day2.new('day2.input').all
end
