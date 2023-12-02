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
end
