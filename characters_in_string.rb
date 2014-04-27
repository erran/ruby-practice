# Extracts the common characters from in two strings
def common_characters(str1, str2)
  # NOTE: In Ruby 2.x chars returns an Array not an Enumerator like theReq's REPL
  chars1 = str1.chars.to_a
  chars2 = str2.chars.to_a

  common_chars = (chars1 & chars2)
  common_chars.uniq
end

alphabet = 'abcdefghijklmnopqrstuvwxyz'
vowels = 'ueioa'

chars = common_characters(alphabet, vowels)
p chars
# => ["a", "e", "i", "o", "u"]
