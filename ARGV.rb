word = ARGV.join(" ")

def pig_latin(word)
  if !(word[0].match(/[aeiou]/))
    word = word.split("")
    first_letter = word.delete(word[0])
    word = word.join("") + first_letter + "ay"
  end
  word
end

def pig_latin_sentence(sentence)
  punctuation = sentence[-1]
  sentence = sentence[0..-2].split(" ")

  sentence.map! {|word| pig_latin(word)}
  sentence = sentence.join(" ") + punctuation

  sentence[0] = sentence[0].downcase
  sentence.capitalize
end

p pig_latin_sentence(word)

# puts pig_latin_sentence("Hi how are you doing?") == "Ihay owhay are ouyay oingday?"
# puts pig_latin_sentence("I am very sleepy right now") == "Iay am eryvay leepysay ightray onayw"
# puts pig_latin_sentence("Also I'm hungry!") == "Lsoaay 'miay ungryhay!"
