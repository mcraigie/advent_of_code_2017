# Author:: Max Craigie  (@MaxCraigie)

class Day5
  def self.problem_1(input)
    instructions = input.split.map(&:to_i)
    current_position = 0
    steps = 0

    while current_position.between?(0, instructions.length - 1)
      new_position = current_position + instructions[current_position]
      instructions[current_position] += 1
      current_position = new_position
      steps += 1
    end

    steps
  end

  def self.problem_2(input)
    instructions = input.split.map(&:to_i)
    current_position = 0
    steps = 0

    while current_position.between?(0, instructions.length - 1)
      new_position = current_position + instructions[current_position]
      instructions[current_position] += (instructions[current_position] >= 3 ? -1 : 1)
      current_position = new_position
      steps += 1
    end

    steps
  end
end
