def pig_latin(english)
  english.downcase!
  return english if english == "" || "aeiouy".include?(english[0])
  /^(?<first_consonants>[^aeiouy\d\W_]+)(?<rest_of_word>.*)/ =~ english
  rest_of_word + first_consonants + "ay"
end

def pig_latin_sentence(sentence)
  sentence = sentence.split(" ")
  sentence.map! { |word| pig_latin(word) }
  sentence.join(" ")
end

#-----ARGV with pig latin-----

puts pig_latin_sentence(ARGV.join(" "))