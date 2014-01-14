class RPNCalculator

def evaluate(rpn_exp)
  array=rpn_exp
  calc_array = []
  array.each do |x|
    if /\d/.match(x)
      calc_array << x
    else
      answer=eval(calc_array[-2] + x + calc_array[-1])
      calc_array.slice!(-2..-1)
      calc_array << answer.to_s
    end
  end
  calc_array[0].to_i
end
end

polish = RPNCalculator.new
x = ARGV
p polish.evaluate(x)