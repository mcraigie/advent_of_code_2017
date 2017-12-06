# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 6' do
  describe 'Problem 1' do
    it 'calculates how many redistribution cycles until a repeat occurs' do
      expect(Day6.problem_1("0\t2\t7\t0")).to eq(5)
    end
  end

  describe 'Problem 1' do
    it 'calculates the length of repeating sequence of states' do
      expect(Day6.problem_2("0\t2\t7\t0")).to eq(4)
    end
  end
end
