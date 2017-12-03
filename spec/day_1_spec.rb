# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 1' do
  describe 'Problem 1' do
    it 'calculates the correct captcha from 1122' do
      input = '1122'
      expect(Day1.problem_1(input)).to eq(3)
    end

    it 'calculates the correct captcha from 1111' do
      input = '1111'
      expect(Day1.problem_1(input)).to eq(4)
    end

    it 'calculates the correct captcha from 1234' do
      input = '1234'
      expect(Day1.problem_1(input)).to eq(0)
    end

    it 'calculates the correct captcha from 91212129' do
      input = '91212129'
      expect(Day1.problem_1(input)).to eq(9)
    end
  end

  describe 'Problem 2' do
    it 'calculates the correct captcha from 1212' do
      input = '1212'
      expect(Day1.problem_2(input)).to eq(6)
    end

    it 'calculates the correct captcha from 1221' do
      input = '1221'
      expect(Day1.problem_2(input)).to eq(0)
    end

    it 'calculates the correct captcha from 123425' do
      input = '123425'
      expect(Day1.problem_2(input)).to eq(4)
    end

    it 'calculates the correct captcha from 123123' do
      input = '123123'
      expect(Day1.problem_2(input)).to eq(12)
    end

    it 'calculates the correct captcha from 12131415' do
      input = '12131415'
      expect(Day1.problem_2(input)).to eq(4)
    end
  end
end
