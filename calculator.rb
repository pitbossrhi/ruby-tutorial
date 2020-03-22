#!/usr/bin/env ruby

class Calculator
  def main()
    opt = nil
    while 'exit' != opt
      print 'Operation: '
      operation = gets.chomp.strip()

      print 'First Number: '
      x = Float(gets.chomp)

      print 'Second Number: '
      y = Float(gets.chomp)
    end
  end
end

calculator = Calculator.new()
calculator.main
