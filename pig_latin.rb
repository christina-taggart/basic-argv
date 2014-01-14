def to_pig_latin(word)
  if word.match(/\A([aeiou])/)
    word
  else
    after_vowel = word.slice(/([aeiou])\w*/)
    before_vowel = word.slice(/^\w([^aeiou]*)/)
    after_vowel + before_vowel + "ay"
  end
end

def pig_latin(sentence)
  complete = sentence.map {|x| to_pig_latin(x)
  }.join(" ")
  puts complete
end

x = ARGV
pig_latin(x)