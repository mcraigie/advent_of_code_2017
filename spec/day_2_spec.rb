# Author:: Max Craigie  (@MaxCraigie)

require_relative '../problems/day_2.rb'

describe 'Day 2' do
  describe 'Problem 1' do
    it 'calculates the checksum of a spreadsheet' do
      input = "5 1 9 5\n7 5 3\n2 4 6 8"
      expect(Day2.problem_1(input)).to eq(18)
    end

  end

  describe 'Problem 2' do
    it 'calculates the checksum of a spreadsheet' do
      input = "5 9 2 8\n9 4 7 3\n3 8 6 5"
      expect(Day2.problem_2(input)).to eq(9)
    end
  end
end
