def translate(words)
  result, tmp, p = "", "", ""

  words.split(" ").each do |word|
    i = word.index(/([aeiou])/, 0)

    if word.match(/([.,:;!?])/)
      p = word[-1]
      word.chop!
    end

    if i == 0
      tmp = pig_latin_vowel(word)
    else
      tmp = pig_latin_consonant(word, i)
    end

    result << capitalize_word(tmp)
    result << p unless p == ""
    result << " "
    p = ""
  end
  result.rstrip!
end

def pig_latin_vowel(word)
  word + "ay"
end

def pig_latin_consonant(word, i)
  result = ""
  if word[0, 2] == "qu"
    result << word [2 .. -1] << word[0, 2] << "ay"
  else
    result << word [i .. -1] << word[0 ... i] << "ay"
  end
end

def capitalize_word (word)
  if word.match(/([A-Z])/)
    word.downcase!.capitalize!
  else word
  end
end
