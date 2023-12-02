class Solver
    def factorial(n)
      raise StandardError.new('Input must be a positive integer') if !n.is_a?(Integer) || n < 0
  
      result = 1
      (1..n).each { |i| result *= i }
      result
    end
  end
  