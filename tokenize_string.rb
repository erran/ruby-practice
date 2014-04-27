def tokenize_string(input, delimiters = ['[^[:alnum:]]'])
  regex = Regexp.compile("#{delimiters.join('|')}")
  input.split(regex).reject(&:empty?)
end

p tokenize_string("How now, Mrs. Brown Cow")
# => ["How", "now", "Mrs", "Brown", "Cow"]

p tokenize_string("The quick brown fox jumped over...")
# => ["The", "quick", "brown", "fox", "jumped", "over"]
