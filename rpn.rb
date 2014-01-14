class RPNCalculator
  def evaluate(string)
    if /^-?\d+$/.match(string)
      return string.to_i
    end
    string.gsub!(/(-?\d+)\s(-?\d+)\s([\+\-\*])/) do |match|
        eval("#{$1} #{$3} #{$2}")
      end
    evaluate(string)
  end
end

calc = RPNCalculator.new
p calc.evaluate(ARGV.join(' '))