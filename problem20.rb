require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 100

def sum_of_factorial(limit)
	product=1
	while limit > 1
		product *= (limit-1)
		limit-=1
	end
	product.to_s.to_s.chars.map(&:to_i).sum
end

def fac(num)
  (1..num).inject(:*).to_s.to_s.chars.map(&:to_i).sum
end


emba_solution = Benchmark.realtime do
	print "\nThe sum of the digits in the number #{limit} :\n#{sum_of_factorial(limit)}\n\n"
end
print "\nTime to get this[maths]: #{emba_solution}\n"

emba_solution = Benchmark.realtime do
	print "\nThe sum of the digits in the number #{limit} :\n#{sum_of_factorial(limit)}\n\n"
end
print "\nTime to get this[euler]: #{emba_solution}\n"
