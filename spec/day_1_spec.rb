# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 1' do
  describe 'Problem 1' do
    it 'calculates the correct captcha' do
      expect(Day1.problem_1('1122')).to eq(3)
    end

    it 'calculates the correct captcha' do
      expect(Day1.problem_1('1111')).to eq(4)
    end

    it 'calculates the correct captcha' do
      expect(Day1.problem_1('1234')).to eq(0)
    end

    it 'calculates the correct captcha' do
      expect(Day1.problem_1('91212129')).to eq(9)
    end
  end

  describe 'Problem 2' do
    it 'calculates the correct captcha' do
      expect(Day1.problem_2('1212')).to eq(6)
    end

    it 'calculates the correct captcha' do
      expect(Day1.problem_2('1221')).to eq(0)
    end

    it 'calculates the correct captcha' do
      expect(Day1.problem_2('123425')).to eq(4)
    end

    it 'calculates the correct captcha' do
      expect(Day1.problem_2('123123')).to eq(12)
    end

    it 'calculates the correct captcha' do
      expect(Day1.problem_2('12131415')).to eq(4)
    end
  end
end
