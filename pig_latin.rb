def convert_word_to_pig_latin(word)
  return "#{word} "  if word.match(/^[aeiouy]/i)
  consonants = word.match(/^[^aeiouy]+/i).to_s
  "#{word.gsub(consonants, "")}#{consonants}ay "
end

def convert_sentence_to_pig_latin

  p ARGV.map { |word| convert_word_to_pig_latin(word) }.join("")
end

convert_sentence_to_pig_latin



