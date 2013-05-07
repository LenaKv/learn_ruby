def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num = 2)
  ((word + " ") * num).rstrip
end

def start_of_word(word, i = 1)
  word[0, i]
end

def first_word(word)
  arr = word.split(" ")
  arr[0]
end

LITTLE_WORDS = %w(or if and the over behind to from)
def titleize (title)
  title.capitalize!
  title = title.split(" ").each { |word| word.capitalize! unless LITTLE_WORDS.include? word }.join (" ")
end
