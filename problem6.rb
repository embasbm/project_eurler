require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 100

def sum_of_squares(n)
	s_squares = 0
	1.upto(n) {|x| s_squares+= x**2}
	s_squares
end

def square_of_the_sum(n)
	1.upto(n).sum ** 2
end


time_100 = Benchmark.realtime do
	print "difference between 
	the sum of the squares of 
	the first one hundred natural 
	numbers and the square of the sum:
	#{square_of_the_sum(limit) - sum_of_squares(limit)}\n"	
end

print "\nTime spent: #{time_100} \n\n"

