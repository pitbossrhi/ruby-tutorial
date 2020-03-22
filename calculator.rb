#!/usr/bin/env ruby

class Arithmetic
  def +(x, y)
    x + y
  end

  def -(x, y)
    x - y
  end

  def *(x, y)
    x * y
  end

  def /(x, y)
    x / y
  end

  def valid_operation?(op)
    %w[+ - / *].include? op
  end
end

class Calculator
  def initialize()
    @math = Arithmetic.new()
  end

  def main()
    print 'Operation: '
    operation = gets.chomp.strip()

    raise 'Invalid operation' unless @math.valid_operation?(operation)

    print 'First Number: '
    x = Float(gets.chomp)

    print 'Second Number: '
    y = Float(gets.chomp)

    ans = @math.public_send(operation, x, y)
    print "Ans: #{ans}"
  end
end

calculator = Calculator.new()
calculator.main
