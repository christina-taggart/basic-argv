class RPNCalculator
  # Define your methods, here!
  def initialize
    @elements = []
  end

  def evaluate(string = nil)
    unless string.nil?
      new_string = string.to_s
      string_elements = string.split
    else
      string_elements = ARGV.map{ |arg| arg.dup }
    end
    string_elements.each do |e|
      if /\d/.match e
        @elements << e.to_i
      else
        operand_b = @elements.pop
        operand_a = @elements.pop
        case e
        when '+'
          @elements << (operand_a + operand_b)
        when '-'
          @elements << (operand_a - operand_b)
        when '*'
          @elements << (operand_a * operand_b)
        else
          raise ArgumentError
        end
      end
    end
    new_answer = @elements[0]
    @elements.clear
    new_answer
  end
end

calc = RPNCalculator.new

p calc.evaluate('1 2 +')   # => 3
p calc.evaluate('2 5 *')   # => 10
p calc.evaluate('50 20 -') # => 30

# The general rule is that 'A B op' is the same as 'A op B'
# i.e., 5 4 - is 5 - 4.
p calc.evaluate('70 10 4 + 5 * -') # => 0

p calc.evaluate