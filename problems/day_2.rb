# Author:: Max Craigie  (@MaxCraigie)

class Day2
  def self.problem_1(input)
    string_to_spreadsheet(input).map { |row| row.max - row.min }.sum
  end

  def self.problem_2(input)
    string_to_spreadsheet(input).map do |row|
      row.map do |divisor|
        row.map do |dividend|
          dividend != divisor && (dividend % divisor).zero? ? dividend / divisor : 0
        end
      end
    end.flatten.sum
  end

  def self.string_to_spreadsheet(string)
    string.each_line.map { |line| line.split.map(&:to_i) }
  end
end
