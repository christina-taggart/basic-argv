def evaluate(rpn)
  regex = /(\d+) (\d+) ([+*-\/])/
  rpn =~regex ? evaluate(rpn.sub!(regex, eval(rpn.match(regex).to_s.sub(regex,'\1\3\2')).to_s)) : rpn.to_i
end
rpn = ARGV.join(" ")
puts evaluate(rpn)