# Author:: Max Craigie  (@MaxCraigie)

class Day6
  def self.problem_1(input)
    banks = input.split.map(&:to_i)
    visited_states = []

    until visited_states.include?(banks.hash)
      visited_states << banks.hash

      most_blocks_count = banks.max
      most_blocks_index = banks.find_index(most_blocks_count)

      current_index = most_blocks_index + 1

      most_blocks_count.times do
        banks[most_blocks_index] -= 1
        banks[current_index % banks.length] += 1
        current_index += 1
      end
    end

    visited_states.length
  end

  # def self.problem_2(input)

  # end
end
