# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 3' do
  describe 'Problem 1' do
    it 'calculates the offset of 1' do
      input = "1"
      expect(Day3.problem_1(input)).to eq(0)
    end

    it 'calculates the offset of 12' do
      input = "12"
      expect(Day3.problem_1(input)).to eq(3)
    end

    it 'calculates the offset of 23' do
      input = "23"
      expect(Day3.problem_1(input)).to eq(2)
    end

    it 'calculates the offset of 1024' do
      input = "1024"
      expect(Day3.problem_1(input)).to eq(31)
    end
  end

  describe 'Problem 2' do
    it 'calculates the first number greater than 20' do
      input = "20"
      expect(Day3.problem_2(input)).to eq(23)
    end

    it 'calculates the first number greater than 100' do
      input = "100"
      expect(Day3.problem_2(input)).to eq(122)
    end

    it 'calculates the first number greater than 800' do
      input = "800"
      expect(Day3.problem_2(input)).to eq(806)
    end
  end
end
