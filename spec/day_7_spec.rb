# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 7' do
  before(:all) do
    @input = [
      'pbga (66)',
      'xhth (57)',
      'ebii (61)',
      'havc (66)',
      'ktlj (57)',
      'fwft (72) -> ktlj, cntj, xhth',
      'qoyq (66)',
      'padx (45) -> pbga, havc, qoyq',
      'tknk (41) -> ugml, padx, fwft',
      'jptl (61)',
      'ugml (68) -> gyxo, ebii, jptl',
      'gyxo (61)',
      'cntj (57)'
    ].join("\n")
  end

  describe 'Problem 1' do
    it 'identifies the root of the tower' do
      expect(Day7.problem_1(@input)).to eq('tknk')
    end
  end

  describe 'Problem 2' do
    it 'calculates a new weight for the problematic program' do
      expect(Day7.problem_2(@input)).to eq(60)
    end
  end
end
