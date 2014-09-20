require 'active_support/core_ext/enumerable'
require 'benchmark'


n1 = 1
n2 = 1
sum = 0
even_n = []
# print "#{n1}, "
# print "#{n2}, "
while n1 < 4_000_000
 even_n << n1 if n1 % 2 == 0
 t= n1
 n1=n2
 n2= t + n2
 print "#{n2}, "
end
print "\n"

print even_n.sum


# n1 = 1
# n2 = 1
# sum = 0
# while n1 < 4000_000 and n2 < 4000_000
# sum +=n1 if n1 % 2 == 0
# sum +=n2 if n2 % 2 == 0
# t= n1
# n1=n2
# n2= t +n2
# end

print "\n\n\n" +sum.to_s