# Author:: Max Craigie  (@MaxCraigie)

class Day2
  def self.problem_1(input)
    spreadsheet = input.each_line.map { |line| line.split.map(&:to_i) }
    spreadsheet.map { |row| row.max - row.min }.sum
  end

  def self.problem_2(input)
    spreadsheet = input.each_line.map { |line| line.split.map(&:to_i) }

    spreadsheet.map do |row|
      row.map do |divisor|
        row.map do |dividend|
          dividend != divisor && (dividend % divisor).zero? ? dividend / divisor : 0
        end
      end
    end.flatten.sum
  end
end
