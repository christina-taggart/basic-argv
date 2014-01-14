# Your code here

# check the first character
#   if its a vowel
#     do nothing
#   if its a consonant
#     remove first character
#     add first character to the end
#     add 'ay'

VOWELS = ['a','e','i','o','u','A','E','I','O','U']

def pig_latin_sentence(sentence = nil)
  unless sentence.nil?
    words = sentence.split(" ")
  else
    sentence = ARGV
    words = sentence.map { |word| word.dup }
  end

  converted_words = []
  unless words.nil?
    words.map do |word|
      pig_latin_word(word, converted_words)
    end
    puts "This many words were changed: #{converted_words.length} words."
    words.join(" ")
  end
end


def pig_latin_word(word, converted_words)
  if word.length >0 && !VOWELS.include?(word[0])
    first_char = word.slice!(0)
    word = word.concat(first_char).concat('ay')
    converted_words << word
  end

  word
end


# driver

p pig_latin_sentence("farmer") == "armerfay"
p pig_latin_sentence("egg") == "egg"
p pig_latin_sentence("hour") == "ourhay"
p pig_latin_sentence("This is a sentence") == "hisTay is a entencesay"
p pig_latin_sentence("Everything is okay.") == "Everything is okay."

p pig_latin_sentence