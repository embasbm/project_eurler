require 'active_support/core_ext/enumerable'
require 'benchmark'


n1 = 1
n2 = 1
sum = 0

while n1 < 4_000_000
 sum +=n1 if n1 % 2 == 0
 t= n1
 n1=n2
 n2= t + n2
end

print "\n\n\n" +sum.to_s
