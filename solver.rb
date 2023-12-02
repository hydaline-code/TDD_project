class Solver
  def factorial(n)
    raise StandardError, 'Input must be a positive integer' if !n.is_a?(Integer) || n.negative?

    result = 1
    (1..n).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    raise ArgumentError, 'Input must be an integer' unless number.is_a?(Integer)

    result =
      if (number % 3).zero? && (number % 5).zero?
        'fizzbuzz'
      elsif (number % 3).zero?
        'fizz'
      elsif (number % 5).zero?
        'buzz'
      else
        number.to_s
      end
    result
  end
end
