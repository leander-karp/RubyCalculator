# frozen_string_literal: true

# The Calculator class can be initialized with a string and solve the expression within.
class Calculator
  def initialize(expression)
    @expression = expression
  end

  def solve
    if expression.include?('+')
      first_operand, second_operand = expression.split('+')
      first_operand.strip!
      second_operand.strip!
      (first_operand.to_i + second_operand.to_i).to_s
    else
      expression.strip
    end
  end

  private

  attr_reader :expression
end
