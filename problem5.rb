require 'active_support/core_ext/enumerable'
require 'benchmark'

def factorize(n)
 f = 2
 factors = []
 until n == 1 do
  if n%f == 0
   n = n / f
   factors << f
  else
   f += 1
  end
 end
 factors
end

n_factors = Hash.new(0)

1.upto(20) do |a|
 factorize(a).group_by { |v| v }.each do |max_factor|
 	n_factors[max_factor[0]] = max_factor[1] if max_factor[1].size > n_factors[max_factor[0]].size || !n_factors.has_key?(max_factor[0])
 end
end

puts "-------"
puts n_factors.inspect
puts "-------"

smallect_multiple = 1
n_factors.each {|k,v| smallect_multiple *= v.inject(:*) }
print "\nthe smallest positive number that is evenly divisible by all of the numbers from 1 to 20:\t" + smallect_multiple.to_s + "\n\n"

