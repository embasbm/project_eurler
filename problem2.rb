require 'active_support/core_ext/enumerable'
require 'benchmark'


num_1, num_2, sum = 1,1,0

while num_1 < 4_000_000
 sum += num_1 if num_1 % 2 == 0 
 temp = num_1
 num_1 = num_2
 num_2 = temp + num_2
end

puts "\n\n"

print "The sum of the even-valued terms:\t" + sum.to_s

puts "\n\n"
