# Author:: Max Craigie  (@MaxCraigie)

class Day4
  def self.problem_1(input)
    input.each_line.count do |passphrase|
      split_passphrase = passphrase.split
      split_passphrase.all? { |word| split_passphrase.count(word) == 1 }
    end
  end

  def self.problem_2(input)
    input.each_line.count do |passphrase|
      sorted_passphrase = passphrase.split.map { |word| word.chars.sort.join }
      sorted_passphrase.all? { |e| sorted_passphrase.count(e) == 1 }
    end
  end
end
