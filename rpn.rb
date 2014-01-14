 def evaluate
  rpn_array = ARGV
  rpn_output = []
  rpn_array.each do |x|
    if  x == "+" or x == "-" or x == "*"
      new_value = rpn_output[-2].send(x, rpn_output[-1])
      rpn_output.pop(2)
      rpn_output << new_value
    else (0..9).include?(x.to_i)
      rpn_output << x.to_i
    end
  end
  rpn_output[0]
end

p evaluate