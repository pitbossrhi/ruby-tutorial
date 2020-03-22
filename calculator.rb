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
    operations.include? op
  end

  def operations
    %w[+ - / *]
  end
end

class Calculator
  def initialize()
    @math = Arithmetic.new()
  end

  def main()
    print 'Operation: '
    operation = gets.chomp.strip()

    raise "Invalid operation (#{operation}) must be one of #{@math.operations.join(', ')}" unless @math.valid_operation?(operation)

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
