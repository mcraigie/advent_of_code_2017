# Author:: Max Craigie  (@MaxCraigie)

class Day8
  def self.problem_1(input)
    registers = Hash.new(0)

    input.each_line do |line|
      arguments = line.split
      target = "registers['#{arguments[0]}']"
      op = (arguments[1] == 'inc' ? '+=' : '-=')
      value = arguments[2]
      c_target = "registers['#{arguments[4]}']"
      c_op, c_value = arguments[5, 6]

      eval "#{target} #{op} #{value} if #{c_target} #{c_op} #{c_value}"
    end

    registers.values.max
  end

  def self.problem_2(input)
    registers = Hash.new(0)

    input.each_line.map do |line|
      arguments = line.split
      target = "registers['#{arguments[0]}']"
      op = (arguments[1] == 'inc' ? '+=' : '-=')
      value = arguments[2]
      c_target = "registers['#{arguments[4]}']"
      c_op, c_value = arguments[5, 6]

      (eval "#{target} #{op} #{value} if #{c_target} #{c_op} #{c_value}") || 0
    end.max
  end
end
