def translate (w)
  w.split.map do |word|
    word =~ /^ ( [^aeiouyq]* (qu)? ) (.*) $/e
    first_phoneme = $1
    rest_of_word = $3
    "#{rest_of_word}#{first_phoneme}ay"
  end.join(" ")
end