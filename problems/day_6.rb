# Author:: Max Craigie  (@MaxCraigie)

class Day6
  def self.problem_1(input)
    banks = input.split.map(&:to_i)
    visited_states = []

    until visited_states.include?(banks.hash)
      visited_states << banks.hash

      max_blocks, largest_bank = banks.each_with_index.max_by { |n, i| [n, -i] }

      current_bank = largest_bank + 1
      banks[largest_bank] = 0

      max_blocks.times do |n|
        banks[(current_bank + n) % banks.length] += 1
      end
    end

    visited_states.length
  end

  def self.problem_2(input)
    banks = input.split.map(&:to_i)
    visited_states = []

    until visited_states.include?(banks.hash)
      visited_states << banks.hash

      max_blocks, largest_bank = banks.each_with_index.max_by { |n, i| [n, -i] }

      current_bank = largest_bank + 1
      banks[largest_bank] = 0

      max_blocks.times do |n|
        banks[(current_bank + n) % banks.length] += 1
      end
    end

    visited_states.length - visited_states.find_index(banks.hash)
  end
end
