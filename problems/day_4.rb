# Author:: Max Craigie  (@MaxCraigie)

class Day4
  def self.problem_1(input)
    input.each_line.count do |passphrase|
      passphrase.split.all? { |word| passphrase.split.count(word) == 1 }
    end
  end

  def self.problem_2(input)
    input.each_line.count do |passphrase|
      sorted = passphrase.split.map { |word| word.chars.sort.join }
      sorted.all? { |e| sorted.count(e) == 1 }
    end
  end
end
