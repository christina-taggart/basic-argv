class RPNCalculator
  def self.evaluate(exp)
    @ops = ['+', '-', '*', '/']
    @stack = []

    @exp = exp.split(' ')

    @exp.each do |x|
      if @ops.include?(x)
        y = eval(@stack[1].to_s + x + @stack[0].to_s)
        @stack.shift(2)
        @stack.unshift(y)
      else
        @stack.unshift(x)
      end
    end
    return @stack[0].to_i
  end
end

expression = ARGV[0]

p RPNCalculator.evaluate(expression)