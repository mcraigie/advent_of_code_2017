# Author:: Max Craigie  (@MaxCraigie)

class Day3
  def self.problem_1(target_number)
    transforms = [[1, 0], [0, 1], [-1, 0], [0, -1]]

    current_number = 1
    current_offset = [0, 0]

    momentum = 1 # number of times current direction is repeated
    countdown = momentum
    allow_momentum_increase = false

    while current_number < target_number.to_i
      current_number += 1
      current_offset.map!.with_index { |e, i| e + transforms.first[i] }

      countdown -= 1

      if countdown.zero?
        transforms.rotate! # change direction
        countdown = momentum

        # increase momentum every second time we change direction
        allow_momentum_increase = !allow_momentum_increase
        momentum += 1 if allow_momentum_increase
      end
    end

    current_offset.sum(&:abs)
  end

  # def self.problem_2(input)

  # end
end