class RPNCalculator

  def evaluate(rpn)
    if rpn =~ /-?\d+ -?\d+ [+*-]/
      execute = rpn.match(/(-?\d+ -?\d+ [+*-])/).to_s
      execute = eval(execute.sub(/(-?\d+) (-?\d+) ([+*-])/,'\1\3\2'))
      rpn.sub!(/-?\d+ -?\d+ [+*-]/, execute.to_s)
      evaluate(rpn)
    else
      rpn.to_i
    end
  end

end
rpn = RPNCalculator.new
puts rpn.evaluate(ARGV[0].dup)
