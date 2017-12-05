# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 2' do
  describe 'Problem 1' do
    it 'calculates the checksum of a spreadsheet' do
      expect(Day2.problem_1("5 1 9 5\n7 5 3\n2 4 6 8")).to eq(18)
    end

  end

  describe 'Problem 2' do
    it 'calculates the checksum of a spreadsheet' do
      expect(Day2.problem_2("5 9 2 8\n9 4 7 3\n3 8 6 5")).to eq(9)
    end
  end
end
