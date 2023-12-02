class Solver
    def factorial(n)
      raise StandardError.new('Input must be a positive integer') if !n.is_a?(Integer) || n < 0
  
      result = 1
      (1..n).each { |i| result *= i }
      result
    end

    def reverse(word)
        word.reverse
    end
    def fizzbuzz(n)
      result =
        if (n % 3).zero? && (n % 5).zero?
          'fizzbuzz'
        elsif (n % 3).zero?
          'fizz'
        elsif (n % 5).zero?
          'buzz'
        else
          n.to_s
        end
      result
    end
  end
  