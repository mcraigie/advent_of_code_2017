# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 3' do
  describe 'Problem 1' do
    it 'calculates the offset of 1' do
      expect(Day3.problem_1('1')).to eq(0)
    end

    it 'calculates the offset of 12' do
      expect(Day3.problem_1('12')).to eq(3)
    end

    it 'calculates the offset of 23' do
      expect(Day3.problem_1('23')).to eq(2)
    end

    it 'calculates the offset of 1024' do
      expect(Day3.problem_1('1024')).to eq(31)
    end
  end

  describe 'Problem 2' do
    it 'calculates the first number greater than 20' do
      expect(Day3.problem_2('20')).to eq(23)
    end

    it 'calculates the first number greater than 100' do
      expect(Day3.problem_2('100')).to eq(122)
    end

    it 'calculates the first number greater than 800' do
      expect(Day3.problem_2('800')).to eq(806)
    end
  end
end
