require_relative '../solver'

RSpec.describe Solver do
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
end
