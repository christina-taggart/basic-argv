def pig_latin(user_input)
  user_input = user_input.split("")
  vowels = ["a","e","i","o","u"]


  if vowels.include?(user_input[0])


  else
    until vowels.include?(user_input[0])
      user_input << user_input.shift

    end
    user_input << "ay"

  end

  return user_input.join
end

def pig_latin_sentence
  sentence = ARGV
  #puts "please enter the setence you want translated"
  # sentence = gets.chomp.split(" ")
  finished_sentence = ""
  count = 0
  sentence.each do |word|
    finished_sentence << pig_latin(word) + " "
    if word != pig_latin(word)
      count += 1
    end
  end

finished_sentence
end

p pig_latin_sentence
