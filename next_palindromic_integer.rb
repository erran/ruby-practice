module PalindromeHelpers
  module_function

  def is_palindrome?(obj)
    # NOTE: In Ruby 2.x String#chars already returns an array
    chars = obj.to_s.downcase.chars.to_a.grep(/[[:alnum]]/)
    chars == chars.reverse
  end

  def next_palindrome_int(num)
    if is_palindrome?(num)
      num.to_s+' is a palindrome'
    else
      num.to_s+' is not a palindrome'
    end
  end
end

p PalindromeHelpers.next_palindrome_int(12)
# => "12 is not a palindrome"

p PalindromeHelpers.next_palindrome_int(11)
# => "11 is a palindrome"

p PalindromeHelpers.next_palindrome_int(121)
# => "121 is a palindrome"
