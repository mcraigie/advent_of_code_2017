# Author:: Max Craigie  (@MaxCraigie)

class Day6
  def self.problem_1(input)
    banks = input.split.map(&:to_i)
    visited_states = []

    until visited_states.include?(banks.hash)
      visited_states << banks.hash

      largest_bank_size = banks.max
      largest_bank = banks.find_index(largest_bank_size)

      current_bank = largest_bank + 1
      banks[largest_bank] = 0

      largest_bank_size.times do |n|
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

      largest_bank_size = banks.max
      largest_bank = banks.find_index(largest_bank_size)

      current_bank = largest_bank + 1
      banks[largest_bank] = 0

      largest_bank_size.times do |n|
        banks[(current_bank + n) % banks.length] += 1
      end
    end

    visited_states.length - visited_states.find_index(banks.hash)
  end
end
