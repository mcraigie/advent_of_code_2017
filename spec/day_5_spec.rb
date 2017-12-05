# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 5' do
  describe 'Problem 1' do
    it 'exits the jump instruction list in 5 steps' do
      input = 
      expect(Day5.problem_1("0\n3\n0\n1\n-3")).to eq(5)
    end
  end

  describe 'Problem 2' do
    it 'exits the jump instruction list in 10 steps' do
      input = 
      expect(Day5.problem_2("0\n3\n0\n1\n-3")).to eq(10)
    end
  end
end
