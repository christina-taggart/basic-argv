def calc(array=ARGV[0])
  array = gets.chomp if ARGV.empty?
  @array = array.split(" ")
  numbers = Array.new
  @array.each {|x|
    if /\d/.match(x)
    numbers << x.to_i
    elsif /\D/.match(x)
    num1 = numbers.pop
    num2 = numbers.pop
      if x == "+"
      numbers << ((num2 + num1).to_i)
      elsif x == "-"
      numbers << ((num2 - num1).to_i)
      elsif x == "*"
      numbers << ((num2 * num1).to_i)
      end
    end
    }
  puts numbers.pop
end

calc # don't use quotes if not using ARGV