class RPNCalculator
  def initialize
  end

  def evaluate(expression)
    expression = expression.split(" ")
    expression.length.times do |index|
      if operation_in_middle?(expression, index)
        expression = simplify(expression, index)
      end
    end
    recursive_evaluate(expression)
  end

  def recursive_evaluate(expression)
    return expression[0].to_i if expression.length == 1
    self.operate(expression.shift.to_i, expression.pop, self.recursive_evaluate(expression))
  end

  def operate(num1, string, num2)
    return num1 + num2 if string == "+"
    return num1 - num2 if string == "-"
    return num1 * num2 if string == "*"
  end

  def operation_in_middle?(expression, index)
    expression[index] =~ /\W/ && expression[index+1] =~ /\d/
  end

  def simplify(expression, index)
    expression.unshift(recursive_evaluate(expression[0..index].to_a))
    expression = expression[0..0] + expression[(index+2)..expression.length]
  end
end

#------------ARGVify it!------------
calc = RPNCalculator.new
p calc.evaluate(ARGV.first.to_s)
