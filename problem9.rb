require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 1000

def pitagorean_finder(limit)
	2.upto(limit) do |a|
		(a+1).upto(limit) do |b|
			return [a,b,limit-b-a] if a**2 + b**2 == (limit-b-a)**2
		end
	end
end



emba_solution = Benchmark.realtime do
	print "\nThe product of abc :\n#{pitagorean_finder(limit).inspect} : #{pitagorean_finder(limit).inject(:*)}\n\n"
end
print "\nTime to get this[maths]: #{emba_solution}\n"
