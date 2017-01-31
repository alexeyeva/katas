def top_3_words(text)
  text.downcase.split(/[^a-zA-Z0-9'-]+/).uniq.sort_by { |word| text.downcase.split(/[^a-zA-Z0-9'-]+/).count(word) }.reverse.first(3).delete_if { |word| word.empty? || (word.length == 1 && word =~ /\W/)}
end

p top_3_words("In a village of La Mancha, the name of which I have no desire to call to
              mind, there lived not long since one of those gentlemen that keep a lance
              in the lance-rack, an old buckler, a lean hack, and a greyhound for
              coursing. An olla of rather more beef than mutton, a salad on most
              nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
              on Sundays, made away with three-quarters of his income.") == ["a", "of", "on"]
puts

p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]

puts
p top_3_words("  //wont won't won't") == ["won't", "wont"]

p top_3_words("'")