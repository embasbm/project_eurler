require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 1000

def power_digit_sum(limit)
	(2**limit).to_s.chars.map(&:to_i).sum
end



emba_solution = Benchmark.realtime do
	print "\nPower digit sum :\n#{power_digit_sum(limit)}\n\n"
end
print "\nTime to get this[maths]: #{emba_solution}\n"
