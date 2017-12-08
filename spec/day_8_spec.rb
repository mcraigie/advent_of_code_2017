# Author:: Max Craigie  (@MaxCraigie)

describe 'Day 8' do
  before(:all) do
    @input = [
      'b inc 5 if a > 1',
      'a inc 1 if b < 5',
      'c dec -10 if a >= 1',
      'c inc -20 if c == 10'
    ].join("\n")
  end

  describe 'Problem 1' do
    it 'blah' do
      expect(Day8.problem_1(@input)).to eq(1)
    end
  end

  describe 'Problem 2' do
    it 'blah' do
      expect(Day8.problem_2(@input)).to eq(10)
    end
  end
end


