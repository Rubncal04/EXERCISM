# frozen_string_literal: true

# A simple calculator.
class SimpleCalculator
  class UnsupportedOperation < StandardError
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise SimpleCalculator::UnsupportedOperation unless ALLOWED_OPERATIONS.any?(operation)
    raise ArgumentError if second_operand.is_a?(String) || first_operand.is_a?(String)

    begin
      "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
    rescue ZeroDivisionError
      'Division by zero is not allowed.'
    end
  end
end
