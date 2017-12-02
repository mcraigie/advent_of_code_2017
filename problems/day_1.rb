# Author:: Max Craigie  (@MaxCraigie)

class Day1
  def self.problem_1(input)
    input = input.chars
    sum = input.each_cons(2).sum { |a, b| a == b ? a.to_i : 0 }
    sum + (input.last == input.first ? input.last.to_i : 0)
  end

  def self.problem_2(input)
    input = input.chars
    input.each_with_index.sum do |item, i|
      offset = (i + (input.length / 2)) % input.length
      item == input[offset] ? item.to_i : 0
    end
  end
end
