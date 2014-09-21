require 'active_support/core_ext/enumerable'
require 'benchmark'

def palindrome_check(n)
 str = n.to_s
 for i in 0...str.length/2
  print "str[" + i.to_s + "] " + str[i].to_s
  print " == "
  print "str[" + (str.length-i-1).to_s + "] " + str[str.length-i-1].to_s
  print "\n"
  if str[i] != str[str.length-i-1]
   return false
  end
 end
 true
end

# puts palindrome_check(90449)
# puts palindrome_check(90309)
# puts palindrome_check(9449)
# puts palindrome_check(9)
# puts palindrome_check(949)

def biggest_palindrome(n_digits)
 num = ("9"*n_digits).to_i
 num.downto(0) do |aa|
  num.downto(0) do |bb|
   p = aa * bb
   return p if palindrome_check(p)
  end
 end
end

puts biggest_palindrome(2)