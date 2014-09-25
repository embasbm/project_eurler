require 'active_support/core_ext/enumerable'
require 'benchmark'

def palindrome_check(n)
 str = n.to_s
 for i in 0...str.length/2
  if str[i] != str[str.length-i-1]
   return false
  end
 end
 true
end


def biggest_palindrome(n_digits)
 num = ("9"*n_digits).to_i
 pals = []
 (1).upto(num) do |num_1|
  (1).upto(num) do |num_2|
    p = num_1 * num_2
    pals << p if palindrome_check(p)
  end
 end
  pals.max
end


print "\n\nThe largest palindrome:\t" + biggest_palindrome(3).to_s + "\n\n"


