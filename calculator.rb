#!/usr/bin/env ruby

class Arithmetic
  def valid_operation?(op)
    %w[+ - / *].include? op
  end
end

class Calculator
  def initialize()
    @math = Arithmetic.new()
  end

  def main()
    opt = nil
    while 'exit' != opt
      print 'Operation: '
      operation = gets.chomp.strip()

      raise 'Invalid operation' unless @math.valid_operation?(operation)

      print 'First Number: '
      x = Float(gets.chomp)

      print 'Second Number: '
      y = Float(gets.chomp)
    end
  end
end

calculator = Calculator.new()
calculator.main
