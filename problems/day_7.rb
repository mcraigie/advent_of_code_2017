# Author:: Max Craigie  (@MaxCraigie)

class Day7
  # abusing symbols like this in ruby is a bad idea
  # but for a puzzle solution, I thought it was hilarious
  def self.problem_1(input)
    GC.disable # prevent ruby from GC'ing all of my dynamically created symbols
    root = input.scan(/[a-z]+/).reduce(0) { |acc, n| acc ^ n.to_sym.object_id }
    ObjectSpace._id2ref(root).to_s
  end

  def self.problem_2(input)
    programs = input.each_line.map { |l| l.scan(/\w+/) }.reduce({}) do |acc, n|
      acc.tap { acc[n[0]] = { own_weight: n[1].to_i, sub_towers: n.drop(2) } }
    end

    detect_weight_error = proc do |current_program|
      n = programs[current_program]
      sub_weights = n[:sub_towers].map { |tower| detect_weight_error[tower] }

      if sub_weights.uniq.size > 1
        bad, good = sub_weights.group_by(&:itself)
                                  .sort_by { |e| e.last.size }
                                  .map(&:first)

        bad_program = programs[n[:sub_towers][sub_weights.find_index(bad)]]
        return bad_program[:own_weight] + (good - bad)
      end

      n[:own_weight] + sub_weights.sum
    end

    GC.disable
    root = input.scan(/[a-z]+/).reduce(0) { |acc, n| acc ^ n.to_sym.object_id }
    detect_weight_error[ObjectSpace._id2ref(root).to_s]
  end
end
