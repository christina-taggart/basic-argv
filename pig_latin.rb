def pig_latin
  puts ARGV.map{|word| pig_latin_single(word.downcase)}.join(" ")
end

def pig_latin_single(user_word)
  user_word.gsub(/(\A[^aeiou])(.+)/, '\2\1ay')
end

pig_latin