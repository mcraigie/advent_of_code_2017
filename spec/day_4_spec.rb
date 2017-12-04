# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 4' do
  describe 'Problem 1' do
    it 'is valid' do
      expect(Day4.problem_1('aa bb cc dd ee')).to eq(1)
    end

    it 'is not valid' do
      expect(Day4.problem_1('aa bb cc dd aa')).to eq(0)
    end

    it 'is valid' do
      expect(Day4.problem_1('aa bb cc dd aaa')).to eq(1)
    end
  end

  describe 'Problem 2' do
    it 'is valid' do
      expect(Day4.problem_2('abcde fghij')).to eq(1)
    end

    it 'is not valid' do
      expect(Day4.problem_2('abcde xyz ecdab')).to eq(0)
    end

    it 'is valid' do
      expect(Day4.problem_2('a ab abc abd abf abj')).to eq(1)
    end

    it 'is valid' do
      expect(Day4.problem_2('iiii oiii ooii oooi oooo')).to eq(1)
    end

    it 'is not valid' do
      expect(Day4.problem_2('oiii ioii iioi iiio')).to eq(0)
    end
  end
end
