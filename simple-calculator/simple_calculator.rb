class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end
  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError unless (first_operand.class == Integer) && (second_operand.class == Integer) && (operation.class == String);
    begin
      return "#{first_operand} #{operation} #{second_operand} = #{(first_operand * second_operand if operation == "*") || (first_operand + second_operand if operation == "+") || (first_operand / second_operand if operation == "/")}"
    rescue ZeroDivisionError
      return "Division by zero is not allowed."
    end
  end
end
