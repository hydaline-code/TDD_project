require_relative '../solver'

RSpec.describe Solver do
    # test for factorial
  describe '#factorial' do
    it 'returns the factorial for a positive number' do
      solver = Solver.new
      result = solver.factorial(4)
      expect(result).to eq(24)
    end

    it 'returns 1 for factorial of 0' do
      solver = Solver.new
      result = solver.factorial(0)
      expect(result).to eq(1)
    end

    it 'raises an exception for a negative number' do
      solver = Solver.new
      expect { solver.factorial(-2) }.to raise_error(StandardError)
    end

    it 'raises an exception for a non-integer input' do
      solver = Solver.new
      expect { solver.factorial('not_integer') }.to raise_error(StandardError)
    end
  end

    #test for reverse
  describe '#reverse' do
    it 'returns the reversed string for a valid input' do
      solver = Solver.new
      result = solver.reverse('hello')
      expect(result).to eq('olleh')
    end

    it 'returns an empty string for an empty input' do
      solver = Solver.new
      result = solver.reverse('')
      expect(result).to eq('')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when N is divisible by 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when N is divisible by 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when N is divisible by both 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns N as a string for other cases' do
      solver = Solver.new
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(11)).to eq('11')
    end
  end

end
